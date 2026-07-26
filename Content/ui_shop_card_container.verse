using { /UnrealEngine.com/Temporary/UI }
using { ShoppingUI.Widgets }

# fill this file with your verse-script

ui_shop_card_container := class:    

    var ShopItemSelected : ui_shop_card = ui_shop_card {}

    var GridRows : int = 2
    var GridColumns : int = 3

    OnItemClicked: event(shop_offers) = event(shop_offers) {}

    CreateRow(ItemList : []ui_shop_card) : stack_box =           
        stack_box:
            Orientation := orientation.Horizontal
            Slots := for (UIItemShop: ItemList):
                stack_box_slot:
                    Widget := UIItemShop.Build()
                    HorizontalAlignment := horizontal_alignment.Left
                    Padding := margin{Left:= 50.0}

    CreateGrid(ItemList : []ui_shop_card) : stack_box =
        NumItems : int = ItemList.Length
        NumRows : int = if (Computed := NumItems / GridColumns) then Ceil(Computed) else 0        

        Rows : []stack_box_slot = for (RowIndex := 0..NumRows - 1):
            RowItems : []ui_shop_card = for (Index -> Item : ItemList, RowOf := Floor(Index / GridColumns), RowOf = RowIndex):                
                Item

            stack_box_slot:
                Widget := CreateRow(RowItems)
                Padding := margin{Top := 20.0}

        stack_box:
            Orientation := orientation.Vertical
            Slots := Rows


    Build(ItemList : []ui_shop_card) : overlay =
        for (UIItemShop : ItemList):
            spawn { HandleItemClicked(UIItemShop) }       

        overlay:
            Slots := array:                
                overlay_slot:
                    Widget := CreateGrid(ItemList)
                                       
               
    HandleItemClicked(Item : ui_shop_card)<suspends> : void =
        loop:
            Item.HitTestButton.OnClick().Await()
            Print("Item Clicked: {Localize(Item.ShopItem.Name)}", ?Duration:=6.0)
            ShopItemSelected.DeselectItem()
            set ShopItemSelected = Item
            Item.SelectItem()
            OnItemClicked.Signal(Item.ShopItem)           
        