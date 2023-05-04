ZM = kosmici.modules("zombiemod")
ZM.Drops = {
	Boxes = {}
}
kosmici.add("event", "dropCreate", function(id, coords)
	local model = `prop_drop_armscrate_01`
	ZM.Utils.RequestModel(model)

	local obj = CreateObject(model, coords, false)
    FreezeEntityPosition(obj, true)
    PlaceObjectOnGroundProperly(obj)

    local blip = AddBlipForCoord(coords)
	SetBlipSprite(blip, 94)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 1.2)
	SetBlipColour(blip, 24)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Zrzut ["..tostring(id).."]")
	EndTextCommandSetBlipName(blip)

    functions.sendNotification(functions.getTranslation(main.lang, "DROP_NEW", id), "gray", 5000)

	ZM.Drops.Boxes[tostring(id)] = {
		pos = coords,
		obj = obj,
        blip = blip
	}
end, {module = "zombiemod", net = true})

kosmici.add("event", "dropRemove", function(id)
    if ZM.Drops.Boxes[tostring(id)] then
        functions.sendNotification(functions.getTranslation(main.lang, "DROP_COLLECTED", tostring(id)), "gray", 5000)
        local drop = ZM.Drops.Boxes[tostring(id)]
        RemoveBlip(drop.blip)
        DeleteObject(drop.obj)

        ZM.Drops.Boxes[tostring(id)] = nil
    end
end, {module = "zombiemod", net = true})

ZM.Drops.Run = function() 
	local lastDrop
	while ZM.Selected do
		Citizen.Wait(3)
		local fnd = false
		for k,v in pairs(ZM.Drops.Boxes) do
			local dist = #(ZM.Player.Coords - v.pos)
			if dist < 7.0 then
				fnd = true
				if lastDrop ~= k then
					if ZM.Drops.Boxes[lastDrop] then
						SetEntityDrawOutline(ZM.Drops.Boxes[lastDrop].obj, false)
					end
					lastDrop = k
					SetEntityDrawOutline(v.obj, true)
					SetEntityDrawOutlineShader(0)
					SetEntityDrawOutlineColor(255, 0, 0, 120)
					functions.sendNotification(functions.getTranslation(main.lang, "DROP_COLLECT"), "gray", 5000)
				else
					SetEntityDrawOutline(v.obj, true)
					SetEntityDrawOutlineShader(0)
					SetEntityDrawOutlineColor(255, 0, 0, 120)
                end
				if IsControlJustPressed(0, 38) then
					kosmici.call("ts", "dropCollect", {module="zombiemod"}, k)
                    functions.sendNotification(functions.getTranslation(main.lang, "DROP_COLLECTED_SELF", tostring(id)), "gray", 5000)
				end
			else
                if lastDrop then
                    SetEntityDrawOutline(ZM.Drops.Boxes[lastDrop].obj, false)
                end
            end
		end
		if not fnd then
			Citizen.Wait(400)
		end
	end
end