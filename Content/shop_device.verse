
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# See https://dev.epicgames.com/documentation/en-us/uefn/create-your-own-device-in-verse for how to create a verse device.

# A Verse-authored creative device that can be placed in a level
shop_device := class(creative_device):

    @editable
    OpenShopVolume : volume_device = volume_device {}
    

    # Runs when the device is started in a running game
    OnBegin<override>()<suspends>:void=
        OpenShopVolume.AgentEntersEvent.Subscribe(OnVolumeEnter)


    OnVolumeEnter(Agent : agent) : void =
        if(Player := player[Agent]):
            Print("Player Entered Shop Volume")            
            UIShop : ui_shop = ui_shop{Player:= Player}
            UIShop.ShowUI()

            
