using { ShoppingUI.Textures }

# fill this file with your verse-script
using { /Verse.org/Assets }

shop_filters<public> := class:
    Name<public><localizes>: message = "Name"
    Description<public><localizes>: message = "Description"
    FilterType<public>: shop_item_type = shop_item_type.All
    Icon<public>: texture = T_Blank

shop_item_type<public> := enum{All, Weapons, Consumables}

shop_filters_data<public> := class:
    AllFilter<localizes> : message = "All"
    AllFilterDescription<localizes> : message = "All items"

    WeaponsFilter<localizes> : message = "Weapons"
    WeaponsFilterDescription<localizes> : message = "Weapons items"

    ConsumiblesFilter<localizes> : message = "Consumables"
    ConsumiblesFilterDescription<localizes> : message = "Consumables items"

    GetFilters() : []shop_filters =        
        array{
            shop_filters{Name := AllFilter, Description := AllFilterDescription, FilterType := shop_item_type.All, Icon := T_All_Filter }
            shop_filters{Name := WeaponsFilter, Description := WeaponsFilterDescription, FilterType := shop_item_type.Weapons, Icon := T_Weapon_Filter }
            shop_filters{Name := ConsumiblesFilter, Description := ConsumiblesFilterDescription, FilterType := shop_item_type.Consumables, Icon := T_Consumibles_Filter }
        }
        
        
