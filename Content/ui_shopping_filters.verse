using { /UnrealEngine.com/Temporary/UI }
using { /Verse.org/Assets }
using { ShoppingUI.Widgets }

ui_shopping_filters := class:

    var OverlayRoot : overlay = overlay {}

    var FiltersWidget : WBP_Filters = WBP_Filters {}

    var UIShopFilters : []ui_shopping_filter_item = array {}

    var ShopFiltersData : shop_filters_data = shop_filters_data {} 
    var FiltersData : []shop_filters = array{}

    var SelectedFilter : ui_shopping_filter_item = ui_shopping_filter_item {}

    OnFilterClicked: event(filter_message_payload) = event(filter_message_payload) {}

    InitFilters(): void =
        set FiltersData = ShopFiltersData.GetFilters()
        for(Filter:FiltersData):
            UIShopFilter : ui_shopping_filter_item = ui_shopping_filter_item {}
            UIShopFilter.SetData(Filter)
            spawn { HandleFilterButtonClicked(UIShopFilter) }
            set UIShopFilters += array{UIShopFilter}
    

    Build(): overlay =
        InitFilters()

        set OverlayRoot = overlay:
            Slots := array:
                overlay_slot:
                    Widget := stack_box:
                        Orientation := orientation.Horizontal
                        Slots := for (UIFilter : UIShopFilters):
                            stack_box_slot:
                                Widget := UIFilter.Build()
        if(FirstFilter := UIShopFilters[0]):
            set SelectedFilter = FirstFilter
            FirstFilter.Click()
        return OverlayRoot


    HandleFilterButtonClicked(ShopFilter : ui_shopping_filter_item)<suspends> : void =
        loop:
            ShopFilter.HitTestButton.OnClick().Await()

            SelectedFilter.DeselectItem()

            ShopFilter.SelectItem()

            set SelectedFilter = ShopFilter
            OnFilterClicked.Signal(filter_message_payload{FilterType := ShopFilter.GetFilterType()})
            Print("Send Message")

filter_message_payload := class<unique>:
    var FilterType : shop_item_type

    
