ZM = kosmici.modules("zombiemod")
ZM.Zones = {
    List = {
        {
			id = 1,
            coords = vector3(-2344.61, 297.72, 169.46-0.98),
            name = "Laboratorium",
            size = 30.0
        },
		{
			id = 2,
			coords = vector3(1661.19, 1.8, 166.12-0.98),
			name = "Tama",
			size = 30.0
		},
		{
			id = 3,
			coords = vector3(2852.72, 1469.18, 24.55-0.98),
			name = "Elektrownia",
			size = 45.0
		},
		{
			id = 4,
			coords = vector3(2429.59, 4983.19, 45.89-0.98),
			name = "Grapeseed",
			size = 45.0
		}
    },
    Blips = {},
	Collecting = false,
	TimeLeft = 0,
}

ZM.Zones.SaveToStop = false
ZM.Zones.Show = function() 
	local blips = {}
	for i,zone in ipairs(ZM.Zones.List) do
		local b = AddBlipForCoord(zone.coords)
		SetBlipSprite(b, 310)
		SetBlipDisplay(b, 4)
		SetBlipScale(b, 1.0)
		SetBlipColour(b, 59)
		SetBlipAsShortRange(b, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(functions.getTranslation(main.lang, "ZONE", i))
		EndTextCommandSetBlipName(b)
	end
    while ZM.Selected do
        Citizen.Wait(3)
		local fnd = false
        for _,zone in pairs(ZM.Zones.List) do
			local dist = #(ZM.Player.Coords - zone.coords)
            if dist < (zone.size*2) then
				fnd = true
                DrawMarker(31, zone.coords[1], zone.coords[2], zone.coords[3]+3.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 122,44,209, 20, false, false, 2, true, nil, nil, false)
				DrawMarker(42, zone.coords[1], zone.coords[2], zone.coords[3]-0.04, 0.0, 0.0, 0.0, 90.0, 0.0, 0.0, zone.size/3, 5.0, zone.size/3, 122,44,209, 40, false, false, 2, false, nil, nil, false)
				if dist < (zone.size/6) then
					if zone ~= ZM.Zones.Current then
						functions.sendNotification(functions.getTranslation(main.lang, "ZONE_ENTER"))
					end
					ZM.Zones.Current = zone
					if IsControlJustPressed(0, 38) then
						kosmici.call("ts", "zoneUpdate", {module = "zombiemod"}, "tryStart", {id=zone.id})
					end
				else
					if ZM.Zones.Current ~= nil then
						if ZM.Zones.Collecting then
							kosmici.call("ts", "zoneUpdate", {module="zombiemod"}, "cancel", {id=ZM.Zones.Current.id})
							functions.sendNotification(functions.getTranslation(main.lang, "ZONE_CANCEL"))
							ZM.Zones.Collecting = false
							ZM.Zones.SaveToStop = true
							Citizen.Wait(2000)
						end
						ZM.Zones.Current = nil
						functions.sendNotification(functions.getTranslation(main.lang, "ZONE_EXIT"))
					end
				end
            end
        end
		if not fnd then
			Citizen.Wait(300)
		end
    end
	for _,blip in pairs(blips) do
		RemoveBlip(blip)
	end
end
kosmici.add("event", "zoneStart", function(data) 
	ZM.Zones.SaveToStop = false
	functions.sendNotification(functions.getTranslation(main.lang, "ZONE_START"))
	ZM.Zones.TimeLeft = 25
	ZM.Zones.Collecting = true
	CreateThread(function()
		if not HasNamedPtfxAssetLoaded("scr_indep_fireworks") then
			RequestNamedPtfxAsset("scr_indep_fireworks")
			while not HasNamedPtfxAssetLoaded("scr_indep_fireworks") do
				Wait(10)
			end
		end
		for i = 1,ZM.Zones.TimeLeft do
			if ZM.Zones.SaveToStop then
				break
			end
			UseParticleFxAssetNextCall("scr_indep_fireworks")
			SetParticleFxNonLoopedColour(1.0, 0.0, 0.0)
			StartNetworkedParticleFxNonLoopedOnEntity("scr_indep_firework_burst_spawn", ZM.Player.Ped, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.1, false, false, false, false)
			
			ZM.Zones.TimeLeft = ZM.Zones.TimeLeft-1
			Citizen.Wait(1000)
		end
		RemoveNamedPtfxAsset("scr_indep_fireworks") -- Clean up
	end)
	CreateThread(function() 
		while ZM.Zones.Collecting do
			Wait(3)
			ZM.DrawText(0.5, 0.8, functions.getTranslation(main.lang, "ZONE_PROGRESS", ZM.Zones.TimeLeft))
			if ZM.Zones.TimeLeft <= 0 then
				kosmici.call("ts", "zoneUpdate", {module="zombiemod"}, "stop", {id=ZM.Zones.Current.id})
				ZM.Zones.Collecting = false
				saveToStop = true
			end
		end
	end)
end, {module = "zombiemod", net = true})

kosmici.add("event", "zoneStop", function(got, zone, drop) 
	if got then
		functions.sendNotification(functions.getTranslation(main.lang, "ZONE_END", drop), "gray", 15000)
	end
end, {module = "zombiemod", net = true})