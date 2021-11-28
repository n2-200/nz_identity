local display = false

RegisterNetEvent('nz_identity')
AddEventHandler('nz_identity', function ()
	SetDisplay(not display)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("main", function(data)
    TriggerServerEvent('nz_identity:data', data)
	if tonumber(data.place) == 0 then
		NetworkResurrectLocalPlayer(-1037.7, -2738.03, 20.16, 100, false, false)
	end
	if tonumber(data.place) == 1 then
		NetworkResurrectLocalPlayer(-265.5, -962.9, 31.21, 100, false, false)
	end
	if tonumber(data.place) == 2 then
		NetworkResurrectLocalPlayer(218.5, -811.06, 30.6, 100, false, false)
	end
	if tonumber(data.place) == 3 then
		NetworkResurrectLocalPlayer(-265.5, -962.9, 31.21, 100, false, false)
	end
	SetDisplay(false)
end)