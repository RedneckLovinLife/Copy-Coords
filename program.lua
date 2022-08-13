RegisterCommand("cc3", function() 
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)

    if IsPedInAnyVehicle(ped) then 
        local vehicle = GetVehiclePedIsIn(ped)
        coords = GetEntityCoords(vehicle)
    end

    local message = {
        type = "copyCoords",
        x = coords.x,
        y = coords.y,
        z = coords.z
    }
    SendNuiMessage(json.encode(message))
end)

RegisterCommand("cc4", function() 
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    
    if IsPedInAnyVehicle(ped) then 
        local vehicle = GetVehiclePedIsIn(ped)
        coords = GetEntityCoords(vehicle)
        heading = GetEntityHeading(vehicle)
    end

    local message = {
        type = "copyCoordsAndHeading",
        x = coords.x,
        y = coords.y,
        z = coords.z,
        h = heading
    }
    SendNuiMessage(json.encode(message))
end)

RegisterCommand("ccg", function() 
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)

    if IsPedInAnyVehicle(ped) then 
        local vehicle = GetVehiclePedIsIn(ped)
        coords = GetEntityCoords(vehicle)
    end

    local message = {
        type = "copyCoordsGarage",
        x = coords.x,
        y = coords.y,
        z = coords.z
    }
    SendNuiMessage(json.encode(message))
end)

RegisterCommand("ccg2", function() 
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)

    if IsPedInAnyVehicle(ped) then 
        local vehicle = GetVehiclePedIsIn(ped)
        coords = GetEntityCoords(vehicle)
    end

    local message = {
        type = "copyCoordsGarage2",
        x = coords.x,
        y = coords.y,
        z = coords.z
    }
    SendNuiMessage(json.encode(message))
end)

