using { /Verse.org/Assets }
using { ShoppingUI.Textures }

shop_offers := class:
    Name<localizes> : message = "Item 1"
    Description<localizes>: message = "Lorem Ipsum Dolorem"
    Icon: texture = T_Blank
    Price: float = 0.0
    OfferCount: int = 1
    Currency:offer_currency = offer_currency.Coin
    Rarity: offer_rarity = offer_rarity.Common
    Type: shop_item_type = shop_item_type.All    


    GetCurrencyIcon(): texture =
        case (Currency):
            offer_currency.Coin => T_CurrencyCoin
            offer_currency.Gem => T_CurrencyGem

offer_rarity := enum{Common, Uncommon, Rare, Epic, Legendary}
offer_currency := enum{Coin, Gem}

shop_offers_data := class:
    # Weapons
    PistolName<localizes> : message = "Pistol"
    AK47Name<localizes> : message = "AK47"
    DesertEagleName<localizes> : message = "Desert Eagle"
    GlockName<localizes> : message = "Glock"
    Mp5Name<localizes> : message = "MP5"
    RevolverName<localizes> : message = "Revolver"
    ShotgunName<localizes> : message = "Shotgun"
    RifleName<localizes> : message = "Rifle"
    SniperName<localizes> : message = "Sniper"

    PistolDescription<localizes> : message = "A basic pistol"
    AK47Description<localizes> : message = "A powerful assault rifle"   
    DesertEagleDescription<localizes> : message = "A high-caliber handgun"
    GlockDescription<localizes> : message = "A reliable semi-automatic pistol"
    Mp5Description<localizes> : message = "A compact submachine gun"
    RevolverDescription<localizes> : message = "A classic revolver"
    ShotgunDescription<localizes> : message = "A powerful close-range weapon"
    RifleDescription<localizes> : message = "A versatile rifle for various situations"
    SniperDescription<localizes> : message = "A precision long-range weapon"

    #Consumibles
    SodaName<localizes> : message = "Soda"
    ChocolateName<localizes> : message = "Chocolate"
    MilkName<localizes> : message = "Milk"
    BeerName<localizes> : message = "Beer"
    CakeName<localizes> : message = "Cake"
    CheeseName<localizes> : message = "Cheese"
    CoffeeName<localizes> : message = "Coffee"
    BreadName<localizes> : message = "Bread"

    SodaDescription<localizes> : message = "A refreshing carbonated beverage"
    ChocolateDescription<localizes> : message = "A sweet treat made from cocoa"
    MilkDescription<localizes> : message = "A bottle of fresh milk"
    BeerDescription<localizes> : message = "A cold beer for relaxation"
    CakeDescription<localizes> : message = "A slice of delicious cake"
    CheeseDescription<localizes> : message = "A block of fine cheese"
    CoffeeDescription<localizes> : message = "A cup of hot coffee"
    BreadDescription<localizes> : message = "A loaf of fresh bread"

    GetShopOffers() :[]shop_offers =
        array{
                shop_offers{Name := PistolName, Description := PistolDescription, Icon := T_Pistol, Price := 100.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Common, Type := shop_item_type.Weapons},
                shop_offers{Name := AK47Name, Description := AK47Description, Icon := T_AK47, Price := 500.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Type := shop_item_type.Weapons},
                shop_offers{Name := DesertEagleName, Description := DesertEagleDescription, Icon := T_DesertEagle, Price := 300.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Type := shop_item_type.Weapons},
                shop_offers{Name := GlockName, Description := GlockDescription, Icon := T_Glock, Price := 150.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Type := shop_item_type.Weapons},
                shop_offers{Name := Mp5Name, Description := Mp5Description, Icon := T_MP5, Price := 400.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Type := shop_item_type.Weapons},
                shop_offers{Name := RevolverName, Description := RevolverDescription, Icon := T_Revolver, Price := 200.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Type := shop_item_type.Weapons},
                shop_offers{Name := ShotgunName, Description := ShotgunDescription, Icon := T_Shotgun, Price := 350.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Type := shop_item_type.Weapons},
                shop_offers{Name := RifleName, Description := RifleDescription, Icon := T_Rifle, Price := 450.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity:=offer_rarity.Rare, Type := shop_item_type.Weapons},
                shop_offers{Name:=SniperName ,Description:=SniperDescription,Icon:=T_Sniper ,Price:=600.0 ,OfferCount:=1 ,Currency:= offer_currency.Coin ,Rarity:=offer_rarity.Epic, Type := shop_item_type.Weapons},
                shop_offers{Name := SodaName, Description := SodaDescription, Icon := T_Soda, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Type := shop_item_type.Consumables},
                shop_offers{Name := ChocolateName, Description := ChocolateDescription, Icon := T_ChocolateBar, Price := 3.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Type := shop_item_type.Consumables},
                shop_offers{Name := MilkName, Description := MilkDescription, Icon := T_Milk, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Type := shop_item_type.Consumables},
                shop_offers{Name := BeerName, Description := BeerDescription, Icon := T_Beerstein, Price := 6.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Type := shop_item_type.Consumables},
                shop_offers{Name := CakeName, Description := CakeDescription, Icon := T_Cake, Price := 7.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity:=offer_rarity.Uncommon, Type := shop_item_type.Consumables},
                shop_offers{Name:=CheeseName ,Description:=CheeseDescription,Icon:=T_Cheese ,Price:=8.0 ,OfferCount:=1 ,Currency:= offer_currency.Coin ,Rarity:=offer_rarity.Rare, Type := shop_item_type.Consumables},
                shop_offers{Name:=CoffeeName ,Description:=CoffeeDescription,Icon:=T_Coffee ,Price:=4.0 ,OfferCount:=1 ,Currency:= offer_currency.Coin ,Rarity:=offer_rarity.Common, Type := shop_item_type.Consumables},
                shop_offers{Name:=BreadName ,Description:=BreadDescription,Icon:=T_Bread ,Price:=3.0 ,OfferCount:=1 ,Currency:= offer_currency.Coin ,Rarity:=offer_rarity.Common, Type := shop_item_type.Consumables}
            }    



