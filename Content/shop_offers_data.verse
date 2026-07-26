using { ShoppingUI.Textures }
using { /Verse.org/Colors }

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

    NewMessage<localizes> : message = "New"
    SaleMessage<localizes> : message = "Sale"
    LimitedMessage<localizes> : message = "Limited"

    # New Weapons
    SilencedPistolName<localizes> : message = "Silenced Pistol"
    GoldenPistolName<localizes> : message = "Golden Pistol"
    RapidPistolName<localizes> : message = "Rapid Pistol"
    MicroPistolName<localizes> : message = "Micro Pistol"
    ServicePistolName<localizes> : message = "Service Pistol"
    ChromeRevolverName<localizes> : message = "Chrome Revolver"
    VintageRevolverName<localizes> : message = "Vintage Revolver"
    SteelRevolverName<localizes> : message = "Steel Revolver"
    TacticalShotgunName<localizes> : message = "Tactical Shotgun"
    SawedOffShotgunName<localizes> : message = "Sawed-Off Shotgun"
    HeavyShotgunName<localizes> : message = "Heavy Shotgun"
    RiotShotgunName<localizes> : message = "Riot Shotgun"
    CombatRifleName<localizes> : message = "Combat Rifle"
    HuntingRifleName<localizes> : message = "Hunting Rifle"
    MarksmanRifleName<localizes> : message = "Marksman Rifle"
    AssaultRifleXName<localizes> : message = "Assault Rifle X"
    BurstRifleName<localizes> : message = "Burst Rifle"
    CarbonRifleName<localizes> : message = "Carbon Rifle"
    BattleRifleName<localizes> : message = "Battle Rifle"
    EliteSniperName<localizes> : message = "Elite Sniper"
    MythicAK47Name<localizes> : message = "Mythic AK47"
    StealthSniperName<localizes> : message = "Stealth Sniper"
    LongRangeSniperName<localizes> : message = "Long-Range Sniper"
    PrecisionSniperName<localizes> : message = "Precision Sniper"
    CompactMP5Name<localizes> : message = "Compact MP5"
    ExtendedMP5Name<localizes> : message = "Extended MP5"
    SuppressedMP5Name<localizes> : message = "Suppressed MP5"
    GoldAK47Name<localizes> : message = "Gold AK47"
    CamoAK47Name<localizes> : message = "Camo AK47"
    EngravedAK47Name<localizes> : message = "Engraved AK47"
    DesertEagleGoldName<localizes> : message = "Desert Eagle Gold"
    DesertEagleChromeName<localizes> : message = "Desert Eagle Chrome"
    TwoToneDesertEagleName<localizes> : message = "Two-Tone Desert Eagle"
    PoliceGlockName<localizes> : message = "Police Glock"
    CustomGlockName<localizes> : message = "Custom Glock"

    SilencedPistolDescription<localizes> : message = "A pistol fitted with a custom suppressor for stealthy takedowns"
    GoldenPistolDescription<localizes> : message = "A pistol finished in gleaming gold plating"
    RapidPistolDescription<localizes> : message = "A pistol modified for a faster rate of fire"
    MicroPistolDescription<localizes> : message = "A miniaturized pistol built for easy concealment"
    ServicePistolDescription<localizes> : message = "A standard-issue sidearm carried by most units"
    ChromeRevolverDescription<localizes> : message = "A revolver with a polished chrome finish"
    VintageRevolverDescription<localizes> : message = "An antique revolver with a rich history"
    SteelRevolverDescription<localizes> : message = "A revolver forged from reinforced steel"
    TacticalShotgunDescription<localizes> : message = "A shotgun modified for tactical close-quarters combat"
    SawedOffShotgunDescription<localizes> : message = "A shortened shotgun built for maximum spread at close range"
    HeavyShotgunDescription<localizes> : message = "A shotgun built with heavier ammunition for extra stopping power"
    RiotShotgunDescription<localizes> : message = "A shotgun issued for riot control situations"
    CombatRifleDescription<localizes> : message = "A rugged rifle built for sustained combat"
    HuntingRifleDescription<localizes> : message = "A rifle designed for accuracy on long hunts"
    MarksmanRifleDescription<localizes> : message = "A rifle balanced for mid-range precision fire"
    AssaultRifleXDescription<localizes> : message = "An experimental assault rifle prototype"
    BurstRifleDescription<localizes> : message = "A rifle that fires in controlled three-round bursts"
    CarbonRifleDescription<localizes> : message = "A rifle built with a lightweight carbon fiber frame"
    BattleRifleDescription<localizes> : message = "A heavy-hitting rifle designed for prolonged engagements"
    EliteSniperDescription<localizes> : message = "A sniper rifle reserved for the most skilled marksmen"
    MythicAK47Description<localizes> : message = "A one-of-a-kind AK47 forged for legendary status"
    StealthSniperDescription<localizes> : message = "A sniper rifle built for silent, long-range eliminations"
    LongRangeSniperDescription<localizes> : message = "A sniper rifle optimized for extreme distances"
    PrecisionSniperDescription<localizes> : message = "A sniper rifle tuned for pinpoint accuracy"
    CompactMP5Description<localizes> : message = "A shortened MP5 built for close-quarters mobility"
    ExtendedMP5Description<localizes> : message = "An MP5 fitted with an extended magazine"
    SuppressedMP5Description<localizes> : message = "An MP5 fitted with a built-in suppressor"
    GoldAK47Description<localizes> : message = "An AK47 finished with a striking gold pattern"
    CamoAK47Description<localizes> : message = "An AK47 wrapped in a jungle camouflage pattern"
    EngravedAK47Description<localizes> : message = "An AK47 featuring intricate hand engravings"
    DesertEagleGoldDescription<localizes> : message = "A Desert Eagle plated in solid gold"
    DesertEagleChromeDescription<localizes> : message = "A Desert Eagle with a mirror chrome finish"
    TwoToneDesertEagleDescription<localizes> : message = "A Desert Eagle with a striking two-tone finish"
    PoliceGlockDescription<localizes> : message = "A standard-issue Glock used by law enforcement"
    CustomGlockDescription<localizes> : message = "A Glock modified with custom grips and sights"

    # New Consumables
    IcedCoffeeName<localizes> : message = "Iced Coffee"
    EspressoName<localizes> : message = "Espresso"
    HotChocolateName<localizes> : message = "Hot Chocolate"
    CappuccinoName<localizes> : message = "Cappuccino"
    LatteName<localizes> : message = "Latte"
    ColdBrewName<localizes> : message = "Cold Brew"
    MochaName<localizes> : message = "Mocha"
    DarkChocolateName<localizes> : message = "Dark Chocolate"
    WhiteChocolateName<localizes> : message = "White Chocolate"
    ChocolateMilkName<localizes> : message = "Chocolate Milk"
    StrawberryMilkName<localizes> : message = "Strawberry Milk"
    ProteinShakeName<localizes> : message = "Protein Shake"
    CraftBeerName<localizes> : message = "Craft Beer"
    WheatBeerName<localizes> : message = "Wheat Beer"
    BirthdayCakeName<localizes> : message = "Birthday Cake"
    ChocolateCakeName<localizes> : message = "Chocolate Cake"
    FruitCakeName<localizes> : message = "Fruit Cake"
    AgedCheeseName<localizes> : message = "Aged Cheese"
    CheddarCheeseName<localizes> : message = "Cheddar Cheese"
    CheesePlatterName<localizes> : message = "Cheese Platter"
    BlueCheeseName<localizes> : message = "Blue Cheese"
    SourdoughBreadName<localizes> : message = "Sourdough Bread"
    GarlicBreadName<localizes> : message = "Garlic Bread"
    ToastName<localizes> : message = "Toast"
    BagelName<localizes> : message = "Bagel"
    RyeBreadName<localizes> : message = "Rye Bread"
    EnergyDrinkName<localizes> : message = "Energy Drink"
    SparklingSodaName<localizes> : message = "Sparkling Soda"
    RootBeerName<localizes> : message = "Root Beer"
    GingerBeerName<localizes> : message = "Ginger Beer"
    GoldenCheeseWheelName<localizes> : message = "Golden Cheese Wheel"

    IcedCoffeeDescription<localizes> : message = "A chilled coffee served over ice"
    EspressoDescription<localizes> : message = "A strong shot of concentrated coffee"
    HotChocolateDescription<localizes> : message = "A warm mug of rich hot chocolate"
    CappuccinoDescription<localizes> : message = "A frothy coffee topped with steamed milk foam"
    LatteDescription<localizes> : message = "A smooth coffee blended with steamed milk"
    ColdBrewDescription<localizes> : message = "A smooth coffee steeped cold for hours"
    MochaDescription<localizes> : message = "A coffee blended with rich chocolate syrup"
    DarkChocolateDescription<localizes> : message = "A rich bar of dark cocoa chocolate"
    WhiteChocolateDescription<localizes> : message = "A creamy bar of sweet white chocolate"
    ChocolateMilkDescription<localizes> : message = "A bottle of milk mixed with rich chocolate"
    StrawberryMilkDescription<localizes> : message = "A bottle of milk flavored with sweet strawberry"
    ProteinShakeDescription<localizes> : message = "A milk-based shake packed with protein"
    CraftBeerDescription<localizes> : message = "A locally brewed craft beer with bold flavor"
    WheatBeerDescription<localizes> : message = "A light, refreshing wheat beer"
    BirthdayCakeDescription<localizes> : message = "A festive cake topped with colorful frosting"
    ChocolateCakeDescription<localizes> : message = "A rich, moist slice of chocolate cake"
    FruitCakeDescription<localizes> : message = "A dense cake studded with dried fruit"
    AgedCheeseDescription<localizes> : message = "A block of cheese aged to perfection"
    CheddarCheeseDescription<localizes> : message = "A sharp block of classic cheddar cheese"
    CheesePlatterDescription<localizes> : message = "An assortment of fine cheeses on a platter"
    BlueCheeseDescription<localizes> : message = "A pungent cheese laced with blue mold veins"
    SourdoughBreadDescription<localizes> : message = "A loaf of tangy sourdough bread"
    GarlicBreadDescription<localizes> : message = "A loaf of bread baked with buttery garlic"
    ToastDescription<localizes> : message = "A slice of bread lightly toasted"
    BagelDescription<localizes> : message = "A dense, chewy bagel fresh from the oven"
    RyeBreadDescription<localizes> : message = "A dense loaf of bread made from rye flour"
    EnergyDrinkDescription<localizes> : message = "A fizzy drink packed with caffeine for a quick boost"
    SparklingSodaDescription<localizes> : message = "A bottle of soda with extra fizz"
    RootBeerDescription<localizes> : message = "A classic sweet root beer soda"
    GingerBeerDescription<localizes> : message = "A spicy, non-alcoholic ginger beer"
    GoldenCheeseWheelDescription<localizes> : message = "A legendary wheel of cheese aged in a golden cellar"

    GetShopOffers() :[]shop_offers =
        array{
                shop_offers{Name := PistolName, Description := PistolDescription, Icon := T_Pistol, Price := 100.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 10.0},
                shop_offers{Name := AK47Name, Description := AK47Description, Icon := T_AK47, Price := 500.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 25.0},
                shop_offers{Name := DesertEagleName, Description := DesertEagleDescription, Icon := T_DesertEagle, Price := 300.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 20.0},
                shop_offers{Name := GlockName, Description := GlockDescription, Icon := T_Glock, Price := 150.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := Mp5Name, Description := Mp5Description, Icon := T_MP5, Price := 400.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons, shop_item_type.New}},
                shop_offers{Name := RevolverName, Description := RevolverDescription, Icon := T_Revolver, Price := 200.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := ShotgunName, Description := ShotgunDescription, Icon := T_Shotgun, Price := 350.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons, shop_item_type.Limited}},
                shop_offers{Name := RifleName, Description := RifleDescription, Icon := T_Rifle, Price := 450.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := SniperName, Description := SniperDescription, Icon := T_Sniper, Price := 750.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Legendary, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 15.0},
                shop_offers{Name := SodaName, Description := SodaDescription, Icon := T_Soda, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := ChocolateName, Description := ChocolateDescription, Icon := T_ChocolateBar, Price := 3.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.Sale}, DiscountPercentage := 5.0},
                shop_offers{Name := MilkName, Description := MilkDescription, Icon := T_Milk, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := BeerName, Description := BeerDescription, Icon := T_Beerstein, Price := 6.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Consumables, shop_item_type.New}},
                shop_offers{Name := CakeName, Description := CakeDescription, Icon := T_Cake, Price := 7.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := CheeseName, Description := CheeseDescription, Icon := T_Cheese, Price := 8.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Consumables, shop_item_type.Limited}},
                shop_offers{Name := CoffeeName, Description := CoffeeDescription, Icon := T_Coffee, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.New}},
                shop_offers{Name := BreadName, Description := BreadDescription, Icon := T_Bread, Price := 3.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := SilencedPistolName, Description := SilencedPistolDescription, Icon := T_Pistol, Price := 150.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := GoldenPistolName, Description := GoldenPistolDescription, Icon := T_Pistol, Price := 250.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons, shop_item_type.New}},
                shop_offers{Name := RapidPistolName, Description := RapidPistolDescription, Icon := T_Pistol, Price := 160.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := MicroPistolName, Description := MicroPistolDescription, Icon := T_Pistol, Price := 130.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 5.0},
                shop_offers{Name := ServicePistolName, Description := ServicePistolDescription, Icon := T_Pistol, Price := 140.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := ChromeRevolverName, Description := ChromeRevolverDescription, Icon := T_Revolver, Price := 220.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := VintageRevolverName, Description := VintageRevolverDescription, Icon := T_Revolver, Price := 280.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons, shop_item_type.Limited}},
                shop_offers{Name := SteelRevolverName, Description := SteelRevolverDescription, Icon := T_Revolver, Price := 240.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := TacticalShotgunName, Description := TacticalShotgunDescription, Icon := T_Shotgun, Price := 380.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := SawedOffShotgunName, Description := SawedOffShotgunDescription, Icon := T_Shotgun, Price := 320.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 10.0},
                shop_offers{Name := HeavyShotgunName, Description := HeavyShotgunDescription, Icon := T_Shotgun, Price := 400.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := RiotShotgunName, Description := RiotShotgunDescription, Icon := T_Shotgun, Price := 360.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons, shop_item_type.New}},
                shop_offers{Name := CombatRifleName, Description := CombatRifleDescription, Icon := T_Rifle, Price := 470.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := HuntingRifleName, Description := HuntingRifleDescription, Icon := T_Rifle, Price := 430.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := MarksmanRifleName, Description := MarksmanRifleDescription, Icon := T_Rifle, Price := 480.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons, shop_item_type.New}},
                shop_offers{Name := AssaultRifleXName, Description := AssaultRifleXDescription, Icon := T_Rifle, Price := 650.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Legendary, Labels := array{shop_item_type.Weapons, shop_item_type.New}},
                shop_offers{Name := BurstRifleName, Description := BurstRifleDescription, Icon := T_Rifle, Price := 460.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := CarbonRifleName, Description := CarbonRifleDescription, Icon := T_Rifle, Price := 490.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons, shop_item_type.Limited}},
                shop_offers{Name := BattleRifleName, Description := BattleRifleDescription, Icon := T_Rifle, Price := 510.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := EliteSniperName, Description := EliteSniperDescription, Icon := T_Sniper, Price := 900.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Legendary, Labels := array{shop_item_type.Weapons, shop_item_type.Limited}},
                shop_offers{Name := MythicAK47Name, Description := MythicAK47Description, Icon := T_AK47, Price := 950.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Legendary, Labels := array{shop_item_type.Weapons, shop_item_type.Limited}},
                shop_offers{Name := StealthSniperName, Description := StealthSniperDescription, Icon := T_Sniper, Price := 650.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Epic, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 20.0},
                shop_offers{Name := LongRangeSniperName, Description := LongRangeSniperDescription, Icon := T_Sniper, Price := 680.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Epic, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := PrecisionSniperName, Description := PrecisionSniperDescription, Icon := T_Sniper, Price := 640.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Epic, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := CompactMP5Name, Description := CompactMP5Description, Icon := T_MP5, Price := 380.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := ExtendedMP5Name, Description := ExtendedMP5Description, Icon := T_MP5, Price := 420.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons, shop_item_type.New}},
                shop_offers{Name := SuppressedMP5Name, Description := SuppressedMP5Description, Icon := T_MP5, Price := 440.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 10.0},
                shop_offers{Name := GoldAK47Name, Description := GoldAK47Description, Icon := T_AK47, Price := 550.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons, shop_item_type.Limited}},
                shop_offers{Name := CamoAK47Name, Description := CamoAK47Description, Icon := T_AK47, Price := 520.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := EngravedAK47Name, Description := EngravedAK47Description, Icon := T_AK47, Price := 560.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := DesertEagleGoldName, Description := DesertEagleGoldDescription, Icon := T_DesertEagle, Price := 380.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Weapons, shop_item_type.Sale}, DiscountPercentage := 15.0},
                shop_offers{Name := DesertEagleChromeName, Description := DesertEagleChromeDescription, Icon := T_DesertEagle, Price := 340.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := TwoToneDesertEagleName, Description := TwoToneDesertEagleDescription, Icon := T_DesertEagle, Price := 360.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := PoliceGlockName, Description := PoliceGlockDescription, Icon := T_Glock, Price := 170.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons}},
                shop_offers{Name := CustomGlockName, Description := CustomGlockDescription, Icon := T_Glock, Price := 190.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Weapons, shop_item_type.New}},
                shop_offers{Name := IcedCoffeeName, Description := IcedCoffeeDescription, Icon := T_Coffee, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := EspressoName, Description := EspressoDescription, Icon := T_Coffee, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.New}},
                shop_offers{Name := HotChocolateName, Description := HotChocolateDescription, Icon := T_Coffee, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := CappuccinoName, Description := CappuccinoDescription, Icon := T_Coffee, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.Sale}, DiscountPercentage := 10.0},
                shop_offers{Name := LatteName, Description := LatteDescription, Icon := T_Coffee, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := ColdBrewName, Description := ColdBrewDescription, Icon := T_Coffee, Price := 6.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Consumables, shop_item_type.New}},
                shop_offers{Name := MochaName, Description := MochaDescription, Icon := T_Coffee, Price := 6.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := DarkChocolateName, Description := DarkChocolateDescription, Icon := T_ChocolateBar, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := WhiteChocolateName, Description := WhiteChocolateDescription, Icon := T_ChocolateBar, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.Sale}, DiscountPercentage := 10.0},
                shop_offers{Name := ChocolateMilkName, Description := ChocolateMilkDescription, Icon := T_Milk, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := StrawberryMilkName, Description := StrawberryMilkDescription, Icon := T_Milk, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.New}},
                shop_offers{Name := ProteinShakeName, Description := ProteinShakeDescription, Icon := T_Milk, Price := 6.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := CraftBeerName, Description := CraftBeerDescription, Icon := T_Beerstein, Price := 8.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := WheatBeerName, Description := WheatBeerDescription, Icon := T_Beerstein, Price := 7.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := BirthdayCakeName, Description := BirthdayCakeDescription, Icon := T_Cake, Price := 9.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Consumables, shop_item_type.Limited}},
                shop_offers{Name := ChocolateCakeName, Description := ChocolateCakeDescription, Icon := T_Cake, Price := 8.0, OfferCount := 2, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := FruitCakeName, Description := FruitCakeDescription, Icon := T_Cake, Price := 7.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Uncommon, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := AgedCheeseName, Description := AgedCheeseDescription, Icon := T_Cheese, Price := 10.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := CheddarCheeseName, Description := CheddarCheeseDescription, Icon := T_Cheese, Price := 8.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := CheesePlatterName, Description := CheesePlatterDescription, Icon := T_Cheese, Price := 12.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Consumables, shop_item_type.Limited}},
                shop_offers{Name := BlueCheeseName, Description := BlueCheeseDescription, Icon := T_Cheese, Price := 9.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Rare, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := SourdoughBreadName, Description := SourdoughBreadDescription, Icon := T_Bread, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := GarlicBreadName, Description := GarlicBreadDescription, Icon := T_Bread, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.New}},
                shop_offers{Name := ToastName, Description := ToastDescription, Icon := T_Bread, Price := 2.0, OfferCount := 3, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := BagelName, Description := BagelDescription, Icon := T_Bread, Price := 3.0, OfferCount := 2, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := RyeBreadName, Description := RyeBreadDescription, Icon := T_Bread, Price := 4.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := EnergyDrinkName, Description := EnergyDrinkDescription, Icon := T_Soda, Price := 6.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.Sale}, DiscountPercentage := 15.0},
                shop_offers{Name := SparklingSodaName, Description := SparklingSodaDescription, Icon := T_Soda, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := RootBeerName, Description := RootBeerDescription, Icon := T_Soda, Price := 5.0, OfferCount := 3, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables}},
                shop_offers{Name := GingerBeerName, Description := GingerBeerDescription, Icon := T_Soda, Price := 5.0, OfferCount := 1, Currency := offer_currency.Coin, Rarity := offer_rarity.Common, Labels := array{shop_item_type.Consumables, shop_item_type.New}},
                shop_offers{Name := GoldenCheeseWheelName, Description := GoldenCheeseWheelDescription, Icon := T_Cheese, Price := 25.0, OfferCount := 1, Currency := offer_currency.Gem, Rarity := offer_rarity.Legendary, Labels := array{shop_item_type.Consumables, shop_item_type.Limited}}
            }