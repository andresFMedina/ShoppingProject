using { /UnrealEngine.com/Temporary/UI }
using { ShoppingUI.Widgets }
using { /Verse.org/Colors }
using { /Verse.org/Assets }
using { ShoppingUI.Materials }

# fill this file with your verse-script


ui_shop_item := class:

    var OverlayRoot: overlay = overlay {}

    var ShopItemWidget : WBP_ShoppingItem = WBP_ShoppingItem {}

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
                    Widget := ShopItemWidget
                    VerticalAlignment := vertical_alignment.Fill
                    HorizontalAlignment := horizontal_alignment.Fill
                overlay_slot:
                    Widget := HitTestButton
                    VerticalAlignment:= vertical_alignment.Fill
                    HorizontalAlignment:= horizontal_alignment.Fill
        
        return OverlayRoot


    SetData(InShopOffer: shop_offers): void =        
        set ShopItem = InShopOffer
        set ShopItemWidget.ShopItemName = InShopOffer.Name
        set ShopItemWidget.ShopItemPrice = InShopOffer.Price
        set ShopItemWidget.ShopItemRarity = RarityMaterial
        SetItemRarity(InShopOffer.Rarity)
        set ShopItemWidget.ShopItemCurrency = InShopOffer.GetCurrencyIcon()
        set ShopItemWidget.ShopItemIcon = InShopOffer.Icon    
        
    SetItemRarity(OfferRarity: offer_rarity) : void =        
        case (OfferRarity):
            offer_rarity.Common =>
                set RarityMaterial.RarityColor = color {R := 1.0, G := 1.0, B := 1.0}
            offer_rarity.Uncommon =>
                set RarityMaterial.RarityColor = color {R := 0.0, G := 1.0, B := 0.0}
            offer_rarity.Rare =>
                set RarityMaterial.RarityColor = color {R := 0.0, G := 0.0, B := 1.0}
            offer_rarity.Epic =>
                set RarityMaterial.RarityColor = color {R := 0.5, G := 0.0, B := 0.5}
            offer_rarity.Legendary =>
                set RarityMaterial.RarityColor = color {R := 1.0, G := 0.5, B := 0.0}
    

    OnClick(_m:widget_message): void =
        set ShopItemWidget.IsSelected = true

    OnHoverStart(_m:widget_message): void =
        set ShopItemWidget.ShopItemIsHovered = true

    OnHoverEnd(_m:widget_message): void =
        set ShopItemWidget.ShopItemIsHovered = false
                
    Click(): void =
        set ShopItemWidget.IsSelected = true

    SelectItem(): void = 
        set ShopItemWidget.IsSelected = true

    DeselectItem(): void = 
        set ShopItemWidget.IsSelected = false        
            

