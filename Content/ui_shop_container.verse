using { /UnrealEngine.com/Temporary/UI }
using { ShoppingUI.Widgets }

# fill this file with your verse-script

ui_shop_container := class:    

    ShopContainerWidget : WBP_ShopContainer = WBP_ShopContainer {}

    var ShopItemSelected : ui_shop_item = ui_shop_item {}

    OnItemClicked: event(shop_offers) = event(shop_offers) {}

    Build(ItemList : []ui_shop_item) : overlay =
        for (UIItemShop : ItemList):
            spawn { HandleItemClicked(UIItemShop) }

        overlay:
            Slots := array:
                overlay_slot:
                    Widget := ShopContainerWidget
                    VerticalAlignment := vertical_alignment.Fill
                    HorizontalAlignment := horizontal_alignment.Fill
                overlay_slot:
                    Widget := stack_box:
                        Orientation := orientation.Vertical
                        Slots := for (UIItemShop: ItemList):
                            stack_box_slot:
                                Widget := UIItemShop.Build()
                                Padding := margin{Top:= 50.0} 
               
    HandleItemClicked(Item : ui_shop_item)<suspends> : void =
        loop:
            Item.HitTestButton.OnClick().Await()
            Print("Item Clicked: {Localize(Item.ShopItem.Name)}", ?Duration:=6.0)
            ShopItemSelected.DeselectItem()
            set ShopItemSelected = Item
            Item.SelectItem()
            OnItemClicked.Signal(Item.ShopItem)           
        