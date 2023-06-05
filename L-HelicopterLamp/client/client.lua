ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterCommand(Config.Command, function(source, args)
    local veh = GetVehiclePedIsUsing(PlayerPedId())
    loop = not loop
    if loop then
        ESX.ShowNotification(("je hebt de lamp van de Helicopter ~g~aan~s~ Gedaan"))
        SetVehicleSearchlight(veh, true, true)
    else
        ESX.ShowNotification(("je hebt de lamp van de Helicopter ~r~uit~s~ Gedaan"))
        SetVehicleSearchlight(veh, false, false)
    end
end)