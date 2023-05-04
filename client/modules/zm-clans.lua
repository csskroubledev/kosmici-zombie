ZM = kosmici.modules("zombiemod")
ZM.Clans = {
	Has = false,
	In = false,
	Clan = {},
	Blips = {},
	Objects = {},
	SetupBase = function() 
		local obj = `prop_lev_crate_01`
		ZM.Utils.RequestModel(obj)
		local storageLevel = ZM.Clans.Clan.Upgrades.StorageLevel
		if storageLevel > 0 then
			table.insert(ZM.Clans.Objects, CreateObjectNoOffset(obj, ZM.Clans.Clan.Base.StoragePos[1][1], ZM.Clans.Clan.Base.StoragePos[1][2], ZM.Clans.Clan.Base.StoragePos[1][3]+1.03, false, false, false))
		end
		if storageLevel > 1 then
			table.insert(ZM.Clans.Objects, CreateObjectNoOffset(obj, ZM.Clans.Clan.Base.StoragePos[2][1], ZM.Clans.Clan.Base.StoragePos[2][2], ZM.Clans.Clan.Base.StoragePos[2][3]+1.03, false, false, false))
		end
		if storageLevel > 2 then
			table.insert(ZM.Clans.Objects, CreateObjectNoOffset(obj, ZM.Clans.Clan.Base.StoragePos[3][1], ZM.Clans.Clan.Base.StoragePos[3][2], ZM.Clans.Clan.Base.StoragePos[3][3]+1.03, false, false, false))
		end
		if storageLevel > 3 then
			table.insert(ZM.Clans.Objects, CreateObjectNoOffset(obj, ZM.Clans.Clan.Base.StoragePos[4][1], ZM.Clans.Clan.Base.StoragePos[4][2], ZM.Clans.Clan.Base.StoragePos[4][3]+1.03, false, false, false))
		end
		for _,v in pairs(ZM.Clans.Objects) do
			SetObjectAllowLowLodBuoyancy(v,false, false)
			SetEntityCollision(v,false)
			FreezeEntityPosition(v, true)
		end
	end,
	EnterBase = function() 
		SetArtificialLightsState(false)
		kosmici.call("event", "enterClan", {module="zombiemod"}, ZM.Clans.Clan.Id)
		SetEntityCoords(ZM.Player.Ped, ZM.Clans.Clan.Base.EnterIn)
		ZM.Clans.In = true
		ZM.Clans.SetupBase()
		ZM.Clans.InBaseMarkers()
	end,
	ExitBase = function() 
		SetArtificialLightsState(true)
		kosmici.call("event", "exitClan", {module="zombiemod"}, ZM.Clans.Clan.Id)
		SetEntityCoords(ZM.Player.Ped, ZM.Clans.Clan.Base.EnterOut)
		for _,v in pairs(ZM.Clans.Objects) do
			DeleteObject(v)
		end
		ZM.Clans.In = false
	end,
	InBaseMarkers = function() 
		local outE = true
		while ZM.Clans.In do
			Citizen.Wait(3)
			local dist = #(ZM.Clans.Clan.Base.EnterIn - ZM.Player.Coords)
			if dist < 30.0 then
				DrawMarker(2, ZM.Clans.Clan.Base.EnterIn, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 255, 255, 100, true, false, 2, false, false, false, false)
				if dist < 5.0 then
					if outE then
						functions.sendNotification(functions.getTranslation(main.lang, "CLAN_EXIT"), "gray", 5000)
					end
					outE = false
					if IsControlJustPressed(0, 38) then
						ZM.Clans.ExitBase()
					end
				elseif dist > 5.0 then
					outE = true
				end
			end
		end
	end,
	OutDoorMarkers = function() 
		local out = true
		while ZM.Clans.Has do
			Citizen.Wait(3)
			local dist = #(ZM.Clans.Clan.Base.EnterOut - ZM.Player.Coords)
			if dist < 30.0 then
				DrawMarker(2, ZM.Clans.Clan.Base.EnterOut, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 255, 255, 100, true, false, 2, false, false, false, false)
				if dist < 5.0 then
					if out then
						functions.sendNotification(functions.getTranslation(main.lang, "CLAN_ENTER"), "gray", 5000)
					end
					out = false
					if IsControlJustPressed(0, 38) then
						ZM.Clans.EnterBase()
					end
				elseif dist > 5.0 then
					out = true
				end
			else
				Citizen.Wait(400)
			end
		end
	end
}
kosmici.add("event", "loadClan", function(clan)
	ZM.Clans.Has = false
	Citizen.Wait(500)
	for _,v in pairs(ZM.Clans.Blips) do
		RemoveBlip(v)
	end
	ZM.Clans.Blips[1] = AddBlipForCoord(clan.Base.EnterOut)
	SetBlipSprite(ZM.Clans.Blips[1], 40)
	SetBlipDisplay(ZM.Clans.Blips[1], 4)
	SetBlipScale(ZM.Clans.Blips[1], 1.0)
	SetBlipColour(ZM.Clans.Blips[1], 59)
	SetBlipAsShortRange(ZM.Clans.Blips[1], true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Klan")
	EndTextCommandSetBlipName(ZM.Clans.Blips[1])
	ZM.Clans.Has = true
	ZM.Clans.Clan = clan
	ZM.Clans.InBaseMarkers()
	ZM.Clans.OutDoorMarkers()
end, {module = "zombiemod", net = true})