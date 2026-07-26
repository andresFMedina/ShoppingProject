using { /Verse.org/Assets }
using { ShoppingUI.Textures }
using { /Verse.org/Colors }

shop_offers_label := class:
    Name<localizes> : message = "New"    
    BackgroundColor: color = color{R:=1.0, G:=0.0, B:=0.0}

shop_offers := class:
    Name<localizes> : message = "Item 1"
    Description<localizes>: message = "Lorem Ipsum Dolorem"       
    Icon: texture = T_Blank
    Price: float = 0.0
    DiscountPercentage: float = 0.0
    OfferCount: int = 1
    Currency:offer_currency = offer_currency.Coin
    Rarity: offer_rarity = offer_rarity.Common
    Labels: []shop_item_type = array{}    


    GetCurrencyIcon(): texture =
        case (Currency):
            offer_currency.Coin => T_CurrencyCoin
            offer_currency.Gem => T_CurrencyGem

    GetRarityColor(): color =
        case (Rarity):
            offer_rarity.Common => color{R:=0.5, G:=0.5, B:=0.5}
            offer_rarity.Uncommon => color{R:=0.0, G:=1.0, B:=0.0}
            offer_rarity.Rare => color{R:=0.0, G:=0.0, B:=1.0}
            offer_rarity.Epic => color{R:=0.5, G:=0.0, B:=1.0}
            offer_rarity.Legendary => color{R:=1.0, G:=0.5, B:=0.0}
    

    GetRarityName(): message =
        RarityMessages := rarity_messages {}
        case (Rarity):
            offer_rarity.Common => RarityMessages.Common
            offer_rarity.Uncommon => RarityMessages.Uncommon
            offer_rarity.Rare => RarityMessages.Rare
            offer_rarity.Epic => RarityMessages.Epic
            offer_rarity.Legendary => RarityMessages.Legendary

    GetLabels() : []shop_offers_label =
        ShopLabels : shop_labels = shop_labels {}
        var OfferLabels: []shop_offers_label = array{}
        for(Label : Labels):
            ShopOfferLabel: shop_offers_label = 
                case (Label):
                    shop_item_type.Weapons => shop_offers_label {Name := ShopLabels.Weapon, BackgroundColor:= color{R:=1.0,G:=0.5, B:=0.0}}
                    shop_item_type.Consumables => shop_offers_label {Name := ShopLabels.Consumable, BackgroundColor:= color{R:=1.0,G:=0.5, B:=0.0}}
                    shop_item_type.New => shop_offers_label {Name := ShopLabels.New, BackgroundColor:= color{R:=1.0,G:=0.5, B:=0.0}}
                    shop_item_type.Sale => shop_offers_label {Name := ShopLabels.Sale, BackgroundColor:= color{R:=1.0,G:=0.5, B:=0.0}}                        
                    shop_item_type.Limited => shop_offers_label {Name := ShopLabels.Limited, BackgroundColor:= color{R:=1.0,G:=0.5, B:=0.0}}                        
                    _ => shop_offers_label {Name := ShopLabels.Weapon, BackgroundColor:= color{R:=1.0,G:=0.5, B:=0.0}}
            set OfferLabels += array {ShopOfferLabel}

        return OfferLabels


rarity_messages := class:
    Common<localizes> : message = "Common"
    Uncommon<localizes> : message = "Uncommon"
    Rare<localizes> : message = "Rare"
    Epic<localizes> : message = "Epic"
    Legendary<localizes> : message = "Legendary"

shop_labels := class:
    Weapon<localizes> : message = "Weapon"
    Consumable<localizes> : message = "Consumable"
    New<localizes> : message = "New"
    Sale<localizes> : message = "On Sale"
    Limited<localizes> : message = "Limited"

offer_rarity := enum{Common, Uncommon, Rare, Epic, Legendary}
offer_currency := enum{Coin, Gem}   



