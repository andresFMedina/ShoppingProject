using { /Verse.org/Assets }
using { /UnrealEngine.com/Temporary/UI }
using {/invaliddomain/ShoppingProject/ShoppingUI/Widgets}

using { ShoppingUI }

# fill this file with your verse-script

ui_shopping_filter_item:= class:
    var RootOverlay : overlay = overlay {}

    var FilterItemWidget : WBP_FilterElement = WBP_FilterElement {}    

    var HitTestButton : button = button {
        Slot := button_slot{
            Widget := texture_block {DefaultImage := ShoppingUI.Textures.T_Blank}
            VerticalAlignment := vertical_alignment.Fill
            HorizontalAlignment := horizontal_alignment.Fill
        }        
    }

    var ShopFilter : shop_filters = shop_filters {}

    Build() : overlay =
        HitTestButton.OnClick().Subscribe(OnClick)
        var FilterOverlayRoot :overlay = overlay: 
            Slots := array:
                overlay_slot:
                    Widget := FilterItemWidget
                    VerticalAlignment:= vertical_alignment.Fill
                    HorizontalAlignment:= horizontal_alignment.Fill
                    Padding := margin {Left := 20.0}
                overlay_slot:
                    Widget := HitTestButton
                    VerticalAlignment:= vertical_alignment.Fill
                    HorizontalAlignment:= horizontal_alignment.Fill
                    Padding := margin {Left := 20.0}
        set RootOverlay = FilterOverlayRoot
        return FilterOverlayRoot

    SetData(InShopFilter : shop_filters) : void =
        set ShopFilter = InShopFilter
        set FilterItemWidget.FilterName = InShopFilter.Name        
        set FilterItemWidget.FilterIcon = InShopFilter.Icon
        FilterItemWidget.FilterIcon


    OnClick(_m:widget_message): void =
        set FilterItemWidget.IsSelected = true
        Print("Clicked {Localize(ShopFilter.Name) }", ?Duration:=6.0)        
    
    Click(): void =
        set FilterItemWidget.IsSelected = true

    SelectItem(): void = 
        set FilterItemWidget.IsSelected = true

    DeselectItem(): void = 
        set FilterItemWidget.IsSelected = false

    GetFilterType(): shop_item_type =
        return ShopFilter.FilterType