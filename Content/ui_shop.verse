using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/UI }
using { ShoppingUI.Widgets }
using { /Fortnite.com/UI }
using { /Verse.org/SceneGraph/CollisionChannels }
using { /Verse.org/Assets }
using { ShoppingUI.Materials }

# fill this file with your verse-script

ui_shop := class:

    var Player : player

    BackButtonText<localizes> : message = "Back"
    NextPageButtonText<localizes> : message = "Next"
    PreviousPageButtonText<localizes> : message = "Previous"

    var OverlayRoot : overlay = overlay {}

    var ShopWidget : WBP_Shop = WBP_Shop {}

    var BackgroundWidget : WBP_Background = WBP_Background {}

    var DetailWidget : WBP_ShopItemDetail = WBP_ShopItemDetail {}            

    var ShopFilters: ui_shopping_filters = ui_shopping_filters {}

    var ShopOffers: shop_offers_data = shop_offers_data {}

    var PagedShopOffers: paginator(shop_offers) = paginator(shop_offers) {ItemsPerPage := 6}

    var ShopItems: []ui_shop_item = array{}

    var ShopCardItems: []ui_shop_card = array{}

    var CurrentFilter: shop_item_type = shop_item_type.All

    #UIShopContainer : ui_shop_container = ui_shop_container {}

    UIShopCardContainer : ui_shop_card_container = ui_shop_card_container {}
    
    var BackButton : button_quiet = button_quiet {}

    var NextPageButton : button_quiet = button_quiet {}
    var PreviousPageButton : button_quiet = button_quiet {}
    
    var ShopItemsWidget : stack_box = stack_box{Orientation := orientation.Vertical}

    var ShopItemsContainer: overlay = overlay {}

    GetShopOffersByType(?ItemType: shop_item_type = shop_item_type.All): []shop_offers =
        AllOffers : []shop_offers = ShopOffers.GetShopOffers()
        case (ItemType):
            shop_item_type.All =>
                AllOffers
            shop_item_type.Weapons => 
                WeaponsOffers := for (Offer : AllOffers, Offer.Labels = shop_item_type.Weapons):
                    Offer
            shop_item_type.Consumables => 
                ConsumablesOffers := for (Offer : AllOffers, Offer.Labels = shop_item_type.Consumables):
                    Offer
            shop_item_type.New => 
                NewOffers := for (Offer : AllOffers, Offer.Labels = shop_item_type.Consumables):
                    Offer
            shop_item_type.Sale => 
                SaleOffers := for (Offer : AllOffers, Offer.Labels = shop_item_type.Consumables):
                    Offer
            shop_item_type.Limited => 
                LimitedOffers := for (Offer : AllOffers, Offer.Labels = shop_item_type.Consumables):
                    Offer

    # SetShopItems(InShopOffers : []shop_offers) : void =
    #     set ShopItems = array {}
    #     for(Offer : InShopOffers):
    #         UIShopItem : ui_shop_item = ui_shop_item {}
    #         UIShopItem.SetData(Offer)
    #         set ShopItems += array {UIShopItem}

    SetShopCardItems(InShopOffers : []shop_offers) : void =
        set ShopCardItems = array {}
        for(Offer : InShopOffers):
            UIShopItem : ui_shop_card = ui_shop_card {}
            UIShopItem.SetData(Offer)
            set ShopCardItems += array {UIShopItem}
        

    ShowUI() : void =
        Print("Creating UI")
        CreateUI()

        if(PlayerUI := GetPlayerUI[Player]):
            PlayerUI.AddWidget(OverlayRoot, player_ui_slot {InputMode := ui_input_mode.All})

    CreateUI(): void =        
        BackButton.SetText(BackButtonText)
        NextPageButton.SetText(NextPageButtonText)
        PreviousPageButton.SetText(PreviousPageButtonText)

        set BackgroundWidget.PlayerCoins = 5500.0
        set BackgroundWidget.PlayerGems = 300.0

        FiltersUI : overlay = ShopFilters.Build()

        AllOffers : []shop_offers = GetShopOffersByType()
        PagedShopOffers.SetItems(AllOffers)
        #SetShopItems(PagedShopOffers.CurrentPageItems())
        SetShopCardItems(PagedShopOffers.CurrentPageItems())
        spawn { HandleFilterChanged() }
        if(FirstOffer := AllOffers[0]):
            SetDataToDetailWidget(FirstOffer)
            spawn { HandleItemChanged(FirstOffer) }

        BackButton.OnClick().Subscribe(OnBackButtonClicked)
        NextPageButton.OnClick().Subscribe(OnNextPageClicked)
        PreviousPageButton.OnClick().Subscribe(OnPreviousPageClicked)        

        PreviousPageButton.SetEnabled(false)        

        set ShopItemsContainer = UIShopCardContainer.Build(ShopCardItems)        
        set ShopItemsWidget = stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot:
                    Widget:= FiltersUI
                    HorizontalAlignment := horizontal_alignment.Center
                    Padding := margin {Top := 20.0}
                stack_box_slot:
                    Widget := stack_box:
                        Orientation := orientation.Horizontal
                        Slots := array:
                            stack_box_slot:
                                Widget := PreviousPageButton
                                HorizontalAlignment := horizontal_alignment.Left
                                VerticalAlignment := vertical_alignment.Top
                                Padding := margin {Right := 50.0}
                            stack_box_slot:
                                Widget := NextPageButton
                                HorizontalAlignment := horizontal_alignment.Right
                                VerticalAlignment := vertical_alignment.Top                                
                    HorizontalAlignment := horizontal_alignment.Center
                    Padding := margin {Top := 30.0}
                stack_box_slot:
                    Widget := ShopItemsContainer
                    HorizontalAlignment := horizontal_alignment.Fill
                    VerticalAlignment := vertical_alignment.Fill
                    Padding := margin {Right:= 450.0}                            

        set OverlayRoot = overlay:
            Slots := array:
                overlay_slot:
                    Widget := BackgroundWidget
                    VerticalAlignment := vertical_alignment.Fill
                    HorizontalAlignment := horizontal_alignment.Fill
                overlay_slot:
                    Widget := BackButton
                    VerticalAlignment := vertical_alignment.Top
                    HorizontalAlignment := horizontal_alignment.Right
                    Padding := margin {Top := 30.0, Right := 50.0}
                overlay_slot:
                    Widget := ShopItemsWidget
                    VerticalAlignment := vertical_alignment.Fill
                    HorizontalAlignment := horizontal_alignment.Center
                overlay_slot:
                    Widget := DetailWidget
                    VerticalAlignment := vertical_alignment.Center
                    HorizontalAlignment := horizontal_alignment.Right
                    Padding := margin {Top := 30.0, Right := 50.0}                    

    HandleFilterChanged()<suspends> : void =
        loop:            
            FilterMessage := ShopFilters.OnFilterClicked.Await()            
            set CurrentFilter = FilterMessage.FilterType
            FilteredOffers : []shop_offers = GetShopOffersByType(?ItemType := FilterMessage.FilterType)
            PagedShopOffers.SetItems(FilteredOffers)
            SetShopCardItems(PagedShopOffers.CurrentPageItems())
            ShopItemsWidget.RemoveWidget(ShopItemsContainer)
            set ShopItemsContainer = UIShopCardContainer.Build(ShopCardItems)
            PreviousPageButton.SetEnabled(false)
            NextPageButton.SetEnabled(true)
            ShopItemsWidget.AddWidget(stack_box_slot{
                Widget := ShopItemsContainer
                HorizontalAlignment := horizontal_alignment.Fill
                VerticalAlignment := vertical_alignment.Fill
                Padding := margin {Right:= 450.0}
            })
    
    OnNextPageClicked(_m:widget_message): void =
        PagedShopOffers.NextPage()
        SetShopCardItems(PagedShopOffers.CurrentPageItems())
        ShopItemsWidget.RemoveWidget(ShopItemsContainer)
        set ShopItemsContainer = UIShopCardContainer.Build(ShopCardItems)
        PreviousPageButton.SetEnabled(true)
        PageCount : int = PagedShopOffers.TotalPages()
        if(PagedShopOffers.CurrentPage + 1 >= PageCount):
            NextPageButton.SetEnabled(false)
        else:
            NextPageButton.SetEnabled(true)
        ShopItemsWidget.AddWidget(stack_box_slot{
            Widget := ShopItemsContainer
            HorizontalAlignment := horizontal_alignment.Fill
            VerticalAlignment := vertical_alignment.Fill
            Padding := margin {Right:= 450.0}
        })

    OnPreviousPageClicked(_m:widget_message): void =
        PagedShopOffers.PreviousPage()
        SetShopCardItems(PagedShopOffers.CurrentPageItems())
        ShopItemsWidget.RemoveWidget(ShopItemsContainer)
        set ShopItemsContainer = UIShopCardContainer.Build(ShopCardItems)
        NextPageButton.SetEnabled(true)
        if(PagedShopOffers.CurrentPage <= 0):
            PreviousPageButton.SetEnabled(false)
        else:
            PreviousPageButton.SetEnabled(true)
        ShopItemsWidget.AddWidget(stack_box_slot{
            Widget := ShopItemsContainer
            HorizontalAlignment := horizontal_alignment.Fill
            VerticalAlignment := vertical_alignment.Fill
            Padding := margin {Right:= 450.0}
        })

    OnBackButtonClicked(_m:widget_message): void =
        if(PlayerUI := GetPlayerUI[Player]):
            PlayerUI.RemoveWidget(OverlayRoot)
    
    HandleItemChanged(Item : shop_offers)<suspends>: void =
        loop:
            ItemClicked := UIShopCardContainer.OnItemClicked.Await()
            Print("Item Clicked: {Localize(ItemClicked.Name)}", ?Duration := 6.0)            
            SetDataToDetailWidget(ItemClicked)

    SetDataToDetailWidget(Item : shop_offers): void =
        set DetailWidget.DetailItemName = Item.Name
        set DetailWidget.DetailItemDescription = Item.Description
        set DetailWidget.DetailItemIcon = Item.Icon
        set DetailWidget.DetailPrice = Item.Price
        set DetailWidget.DetailCurrencyIcon = Item.GetCurrencyIcon()

    GetMaterialForCurrency(Currency: offer_currency): material =
        case (Currency):
            offer_currency.Coin =>
                return M_UI_Currency_Coin_Inst {}
            offer_currency.Gem =>
                return MI_UI_Currency_Gem_Inst {}


    