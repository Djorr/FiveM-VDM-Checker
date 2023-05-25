RegisterNetEvent('onPlayerDeath')
AddEventHandler('onPlayerDeath', function(data)
    local victimName = GetPlayerName(PlayerId()) -- Assuming you want to get the victim's name
    local victimPed = PlayerPedId()
    local killerPed = GetPedSourceOfDeath(victimPed)

    if IsEntityAVehicle(killerPed) then
        local killerVehicle = GetVehiclePedIsIn(killerPed, false)
        local driverName = GetPlayerName(NetworkGetPlayerIndexFromPed(killerPed)) -- Assuming you want to get the driver's name

        -- Perform additional checks if necessary

        -- Print the message with the names
        print("Player "..victimName.." has been killed by "..driverName..".")

        -- Could give them a /reviveme command
    end
end)
