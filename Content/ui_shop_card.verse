using { /UnrealEngine.com/Temporary/UI }
using { ShoppingUI.Widgets }
using { /Verse.org/Colors }
using { /Verse.org/Assets }
using { ShoppingUI.Materials }

# fill this file with your verse-script


ui_shop_card := class:

    var OverlayRoot: overlay = overlay {}

    var ShopCardItemWidget : WBP_ShopItemCard = WBP_ShopItemCard {}    

    var ShopItemLabelWidgets : []WBP_Label = array{}

    var RarityMaterial : MI_UI_Rarity = MI_UI_Rarity {}

    var HitTestButton : button = button {
        Slot := button_slot{
            Widget := texture_block {DefaultImage := ShoppingUI.Textures.T_Blank}
            VerticalAlignment := vertical_alignment.Fill
            HorizontalAlignment := horizontal_alignment.Fill
        }        
    }

    var ShopItem: shop_offers = shop_offers {}

    Build(): overlay =
        HitTestButton.OnClick().Subscribe(OnClick)
        HitTestButton.HighlightEvent().Subscribe(OnHoverStart)
        HitTestButton.UnhighlightEvent().Subscribe(OnHoverEnd)
        set OverlayRoot = overlay: 
            Slots:= array:
                overlay_slot:
                    Widget := stack_box:
                        Orientation := orientation.Vertical
                        Slots := array:
                            stack_box_slot:
                                Widget := stack_box:
                                    Orientation := orientation.Vertical
                                    Slots := for (LabelWidget : ShopItemLabelWidgets):
                                        stack_box_slot:
                                            Widget := LabelWidget
                                            HorizontalAlignment := horizontal_alignment.Fill
                                            VerticalAlignment := vertical_alignment.Fill                                
                                HorizontalAlignment := horizontal_alignment.Fill
                            stack_box_slot:
                                Widget := ShopCardItemWidget
                    VerticalAlignment := vertical_alignment.Fill
                    HorizontalAlignment := horizontal_alignment.Fill
                overlay_slot:
                    Widget := HitTestButton
                    VerticalAlignment:= vertical_alignment.Fill
                    HorizontalAlignment:= horizontal_alignment.Fill
        
        return OverlayRoot


    SetData(InShopOffer: shop_offers): void =        
        set ShopItem = InShopOffer
        set ShopCardItemWidget.ItemName = InShopOffer.Name
        set ShopCardItemWidget.ItemIcon = InShopOffer.Icon        
        set ShopCardItemWidget.ItemRarityName = InShopOffer.GetRarityName()
        set ShopCardItemWidget.ItemRarityColor = InShopOffer.GetRarityColor()        
        set ShopCardItemWidget.ItemCurrentPrice = InShopOffer.Price
        set ShopCardItemWidget.ItemCurrencyTexture = InShopOffer.GetCurrencyIcon()
        if(InShopOffer.DiscountPercentage > 0.0):
            set ShopCardItemWidget.ItemDiscountedPrice = InShopOffer.Price
            set ShopCardItemWidget.ItemCurrentPrice = InShopOffer.Price * (1.0 - InShopOffer.DiscountPercentage/100.0)
            set ShopCardItemWidget.ItemIsDiscounted = true
        Labels := InShopOffer.GetLabels()
        for(Label : Labels):
            LabelWidget : WBP_Label = WBP_Label{}
            set LabelWidget.LabelText = Label.Name
            set LabelWidget.LabelBackgroundColor = Label.BackgroundColor
            set ShopItemLabelWidgets += array{LabelWidget}




    OnClick(_m:widget_message): void =
        set ShopCardItemWidget.ItemSelected = true

    OnHoverStart(_m:widget_message): void =
        set ShopCardItemWidget.ItemHovered = true

    OnHoverEnd(_m:widget_message): void =
        set ShopCardItemWidget.ItemHovered = false
                
    Click(): void =
        set ShopCardItemWidget.ItemSelected = true

    SelectItem(): void = 
        set ShopCardItemWidget.ItemSelected = true

    DeselectItem(): void = 
        set ShopCardItemWidget.ItemSelected = false        
            

