ZM = kosmici.modules("zombiemod")
ZM.Zones = {
    {id = 1, name = "Laboratorium", taken = false, progress = {src=nil, is=false}},
    {
        id = 2,
        name = "Tama",
        taken = false,
        progress = {
            src = nil,
            is = false
        }
    },
    {
        id = 3,
        name = "Elektrownia",
        taken = false,
        progress = {
            src = nil,
            is = false
        }
    },
    {
        id = 4,
        name = "Grapeseed",
        taken = false,
        progress = {
            src = nil,
            is = false
        }
    }
}
ZM.Players = {}
local zombieDrops = {
    [1] = {
        {
            item = "bandage",
            minCount = 1,
            maxCount = 3,
            chance = 90
        },
        {
            item = "chocolate_bar",
            minCount = 1,
            maxCount = 5,
            chance = 80
        },
        {
            item = "water",
            minCount = 1,
            maxCount = 2,
            chance = 70
        },
        {
            weapon = "knuckle",
            count = 1,
            chance = 5,
        },
        {
            weapon = "bottle",
            count = 1,
            chance = 3
        }
    },
    [2] = {
        {
            weapon = "bat",
            count = 1,
            chance = 20,
        },
        {
            item = "bandage",
            minCount = 1,
            maxCount = 3,
            chance = 90
        },
        {
            item = "bread",
            minCount = 2,
            maxCount = 6,
            chance = 80
        },
        {
            item = "water",
            minCount = 1,
            maxCount = 5,
            chance = 90
        },
        {
            item = "adrenaline",
            count = 1,
            chance = 55
        }
    },
    [3] = {
        {
            item = "bandage",
            count = 3,
            chance = 80
        },
        {
            weapon = "bat",
            count = 1,
            chance = 35
        },
        {
            item = "pistol_ammo",
            minCount = 2,
            maxCount = 8,
            chance = 50
        },
        {
            item = "bread",
            minCount = 2,
            maxCount = 7,
            chance = 65
        },
        {
            item = "water",
            minCount = 3,
            maxCount = 8,
            chance = 60
        },
        {
            item = "adrenaline",
            minCount = 1,
            maxCount = 2,
            chance = 60
        }
    },
    [4] = {
        {
            weapon = "pistol",
            count = 1,
            chance = 3,
        },
        {
            item = "pistol_ammo",
            minCount = 5,
            maxCount = 15,
            chance = 13
        },
        {
            item = "medkit",
            count = 1,
            chance = 40
        },
        {
            item = "bread",
            count = 10,
            chance = 55,
        },
        {
            item = "water",
            minCount = 3,
            maxCount = 6,
            chance = 53
        },
        {
            item = "adrenaline",
            minCount = 1,
            maxCount = 3,
            chance = 65
        }
    },
    [5] = {
        {
            weapon = "snspistol",
            count = 1,
            chance = 10
        },
        {
            weapon = "microsmg",
            count = 1,
            chance = 1
        },
        {
            item = "pistol_ammo",
            minCount = 3,
            maxCount = 7,
            chance = 20
        },
        {
            item = "smg_ammo",
            minCount = 1,
            maxCount = 3,
            chance = 5
        },
        {
            item = "medkit",
            minCount = 1,
            maxCount = 3,
            chance = 25
        },
        {
            item = "adrenaline",
            minCount = 1,
            maxCount = 3,
            chance = 75
        }
    },
    [6] = {
        {
            weapon = "smg",
            count = 1,
            chance = 3,
        },
        {
            item = "smg_ammo",
            minCount = 3,
            maxCount = 17,
            chance = 15
        },
        {
            item = "pistol_ammo",
            minCount = 9,
            maxCount = 16,
            chance = 20
        },
        {
            weapon = "snspistol_mk2",
            count = 1,
            chance = 25
        },
        {
            item = "medkit",
            count = 4,
            chance = 53
        },
        {
            item = "adrenaline",
            minCount = 2,
            maxCount = 4,
            chance = 75
        }
    },
    [7] = {
        {
            weapon = "smg_mk2",
            count = 1,
            chance = 4
        },
        {
            item = "smg_ammo",
            minCount = 5,
            maxCount = 23,
            chance = 14
        },
        {
            item = "pistol_ammo",
            minCount = 10,
            maxCount = 20,
            chance = 20
        },
        {
            weapon = "vintagepistol",
            count = 1,
            chance = 30
        },
        {
            item = "medkit",
            count = 6,
            chance = 60
        },
        {
            item = "adrenaline",
            minCount = 2,
            maxCount = 5,
            chance = 75
        }
    }
}
local zoneDrops = {
    {
        item = "bandage",
        minCount = 3,
        maxCount = 13,
        chance = 80
    },
    {
        weapon = "microsmg",
        count = 1,
        chance = 1
    },
    {
        item = "medkit",
        minCount = 2,
        maxCount = 3,
        chance = 75
    },
    {
        weapon = "snspistol_mk2",
        count = 1,
        chance = 30
    },
    {
        weapon = "snspistol",
        count = 1,
        chance = 20
    },
    {
        item = "smg_ammo",
        minCount = 3,
        maxCount = 12,
        chance = 30
    },
    {
        item = "pistol_ammo",
        minCount = 4,
        maxCount = 10,
        chance = 40
    },
    {
        item = "adrenaline",
        minCount = 1,
        maxCount = 5,
        chance = 68
    },
    {
        item = "bread",
        minCount = 5,
        maxCount = 10,
        chance = 85
    },
    {
        item = "water",
        minCount = 5,
        maxCount = 5,
        chance = 85
    }
}
local dropDrops = {
    {
        item = "medkit",
        minCount = 3,
        maxCount = 6,
        chance = 80,
    },
    {
        item = "bandage",
        minCount = 2,
        maxCount = 7,
        chance = 75,
    },
    {
        item = "adrenaline",
        minCount = 1,
        maxCount = 4,
        chance = 70
    },
    {
        weapon = "smg",
        count = 1,
        chance = 1,
    },
    {
        weapon = "smg_mk2",
        count = 1,
        chance = 1,
    },
    {
        weapon = "microsmg",
        count = 1,
        chance = 1
    },
    {
        item = "pistol_ammo",
        minCount = 3,
        maxCount = 14,
        chance = 30
    },
    {
        item = "smg_ammo",
        minCount = 4,
        maxCount = 15,
        chance = 20
    }
}
ZM.GetZone = function(id) 
    for k,v in pairs(ZM.Zones) do
        if v.id == id then
            return v
        end
    end
    return false
end
ZM.Announce = function(message, color, duration) 
    for k,v in pairs(ZM.Players) do
        if v then
            kosmici.call("tc", "notify", {module="main", player=k}, message, color, duration)
        end
    end
end
ZM.CallEvent = function(name, moduleN, ...) 
    for k,v in pairs(ZM.Players) do
        print(k)
        print(v)
        if v then
            kosmici.call("tc", name, {module=moduleN, player=k}, ...)
        end
    end
end
ZM.GetSteam = function(src) 
    local steamid  = false
    for k,v in pairs(GetPlayerIdentifiers(src)) do
      if string.sub(v, 1, string.len("steam:")) == "steam:" then
        steamid = v
        break
      end
    end
    if not steamid then
        DropPlayer(src, "Steam not found.")
    end
    return steamid
end

ZM.GenerateZombieDrop = function(tier) 
    local pool = zombieDrops[tier]
    local x = math.random(0,100)
    if x <= 75 then
        local items = {}
        for _,v in pairs(pool) do
            local n = math.random(0, 100)
            if n <= v.chance then
                local count
                if v.minCount then
                    count = math.random(v.minCount, v.maxCount)
                else
                    count = v.count
                end
                local iType = ""
                local iName = ""
                if v.weapon then
                    iType = "weapon"
                    iName = v.weapon
                else
                    iType = "item"
                    iName = v.item
                end
                table.insert(items, {
                    type = iType,
                    name = iName,
                    count = count
                })
            end
        end
        return items
    else
        return false
    end
end

ZM.GenerateZoneDrop = function() 
    local pool = zoneDrops
    local items = {}
    for _,v in pairs(pool) do
        local n = math.random(0, 100)
        if n <= v.chance then
            local count
            if v.minCount then
                count = math.random(v.minCount, v.maxCount)
            else
                count = v.count
            end
            local iType = ""
            local iName = ""
            if v.weapon then
                iType = "weapon"
                iName = v.weapon
            else
                iType = "item"
                iName = v.item
            end
            table.insert(items, {
                type = iType,
                name = iName,
                count = count
            })
        end
    end
    return items
end

ZM.GenerateDropDrop = function() 
    local pool = dropDrops
    local items = {}
    for _,v in pairs(pool) do
        local n = math.random(0, 100)
        if n <= v.chance then
            local count
            if v.minCount then
                count = math.random(v.minCount, v.maxCount)
            else
                count = v.count
            end
            local iType = ""
            local iName = ""
            if v.weapon then
                iType = "weapon"
                iName = v.weapon
            else
                iType = "item"
                iName = v.item
            end
            table.insert(items, {
                type = iType,
                name = iName,
                count = count
            })
        end
    end
    return items
end

--[[
    Main
]]
kosmici.add("event", "join", function() 
    local src = source
    local steam = ZM.GetSteam(src)
    if not ZM.Players[tostring(src)] then
        kosmici.log(src.." joined Zombie Mod")
        kosmici.log(json.encode(GetPlayerIdentifiers(src)))
        ZM.Players[tostring(src)] = GetPlayerIdentifiers(src)
        --[[
            TODO: Wczytywanie klanu i wysyłanie jak typek jest w owym, zamiast wysyłania po prostu jakiś losowych danych

            Id = ID z bazy danych,
            Base = obiekt z informacjami dot. kordów położenia danych rzeczy w interiorze,
            Upgrades = obiekt z informacjami dot. ulepszeń klanu (czyt. magazyn/przebieralnia/typ klanu [interior])
        ]]
        kosmici.call("tc", "loadClan", {module="zombiemod", player=src}, {
            Id = 1312,
            Base = {
                StoragePos = ZM.Clans.Bases[4].Storages,
                ClothingPos = vector3(0,0,0),
                EnterOut = vector3(-2352.16, 376.92, 174.47),
                EnterIn = ZM.Clans.Bases[4].EnterIn
            },
            Upgrades = {
                ClanType = 1,
                StorageLevel = 4,
                Clothing = false
            }
        })
    end
end, {module = "zombiemod", net=true})
kosmici.add("event", "quit", function(src) 
    local steam = ZM.GetSteam(src)
    if ZM.Players[tostring(src)] then
        local plr = ZM.Players[tostring(src)]
        kosmici.log(src.." left Zombie Mod")
        ZM.Players[tostring(src)] = false
    end
end, {module = "zombiemod", net=true})

AddEventHandler('playerDropped', function (reason)
    local src = source
    if ZM.Players[tostring(src)] then
        kosmici.call("t", "quit", {module = "zombiemod"}, src)
    end
end)

--[[
    Main - END
]]

--[[
    Zombies
]]

local weapons = {
    `WEAPON_UNARMED`,
    `WEAPON_BAT`,
    `WEAPON_KNUCKLE`,
    `WEAPON_SNSPISTOL`,
    `WEAPON_SNSPISTOL_MK2`,
    `WEAPON_VINTAGEPISTOL`,
    `WEAPON_PISTOL`,
    `WEAPON_PISTOL50`,
    `WEAPON_HEAVYPISTOL`,
    `WEAPON_PISTOL_MK2`,
    `WEAPON_DOUBLEACTION`,
    `WEAPON_REVOLVER`,
    `WEAPON_COMBATPDW`,
    `WEAPON_CARBINERIFLE`,
    `WEAPON_ADVANCEDRIFLE`,
    `WEAPON_NIGHTSTICK`,
    `WEAPON_DAGGER`,
    `WEAPON_HAMMER`,
    `WEAPON_BOTTLE`,
    `WEAPON_CROWBAR`,
    `WEAPON_FLASHLIGHT`,
    `WEAPON_CROWBAR`,
    `WEAPON_KNIFE`,
    `WEAPON_HATCHET`,
    `WEAPON_MACHETE`,
    `WEAPON_WRENCH`,
    `WEAPON_MACHINEPISTOL`,
    `WEAPON_SMG`,
    `WEAPON_SMG_MK2`,
    `WEAPON_MICROSMG`,
    `WEAPON_CARBINERIFLE`
}

local zombieLoot = {}

ZM.RemoveLoot = function(id) 
    for i,v in ipairs(zombieLoot) do
        if v.id == id then
            table.remove(zombieLoot, i)
            break
        end
    end
end

kosmici.add("event", "collectLoot", function(id) 
    local src = source
    if zombieLoot[id] then
        if zombieLoot[id].owner ~= src then
            --banuj kurwe
            kosmici.log("ban "..src)
            return
        end
        local loot = zombieLoot[id].loot
        if not loot then
            kosmici.call("tc", "notify", {module="main", player=src}, functions.getTranslation(main.lang, "ZOMBIE_NO_LOOT"), "gray", 7500)
        else
            local str = ""
            for i,v in ipairs(loot) do
                if i ~= #loot then
                    str = str .. v.count .. "x " .. v.name .. ", "
                else
                    str = str .. v.count .. "x " .. v.name .. "."
                end
            end
            kosmici.call("tc", "notify", {module="main", player=src}, functions.getTranslation(main.lang, "ZOMBIE_LOOT", str), "gray", 7500)
        end
        ZM.RemoveLoot(id)
    end
end, {module="zombiemod", net=true})
kosmici.add("event", "removeZombie", function(id) 
    local src = source
    if zombieLoot[id] then
        if zombieLoot[id] == src then
            ZM.RemoveLoot(id)
        else
            --banuj kurwe
            kosmici.log("ban "..src)
            return
        end
    end
end, {module="zombiemod", net=true})

kosmici.add("event", "killZombie", function(d, n, cb) 
    local src = source
    if d.tier ~= n.tier then
        kosmici.log("ban "..src)
        return
    end
    local tier = d.tier
    local cause = n.weapon
    local isWeapon = false
    for _,v in pairs(weapons) do
        if cause == v then
            isWeapon = true
            break
        end
    end
    if not isWeapon then
        return
    end
    --[[
        Dodawanie EXP
    ]]
    local loot = ZM.GenerateZombieDrop(tier)
    zombieLoot[d.id] = {
        loot = loot,
        owner = src,
        id = d.id
    }
end, {module="zombiemod", net=true})

--[[
    Zombies [END]
]]


--[[
    Drops [DEV]
]]
local drops = {}
local dropsCoords = {
    vector3(-2345.14, 283.96, 169.47),
    vector3(-2350.77, 298.82, 169.47),
    vector3(-2343.98, 306.45, 169.47)
    --[[
        TODO: Lista miejsc zrzutów
    ]]
}

ZM.DropBox = function() 
    local n = math.random(10000, 99999)
    drops[tostring(n)] = {
        drop = ZM.GenerateDropDrop(),
        collected = false
    }
    ZM.CallEvent("dropCreate", "zombiemod", n, dropsCoords[math.random(1, #dropsCoords)])
end

CreateThread(function() 
    while true do
        ZM.DropBox()
        Citizen.Wait(15*60*1000)
    end
end)

kosmici.add("event", "dropCollect", function(id) 
    if drops[id] then
        ZM.CallEvent("dropRemove", "zombiemod", id)
        local drop = drops[id].drop
        --[[
            Dawanie dropu i XP za zrzut
        ]]
        drops[id] = nil
    end
end, {module="zombiemod", net=true})

kosmici.add("command", "dropBox", function(source,args,rawCommand) 
    ZM.DropBox()
end, {restricted = false})

--[[
    Drops - END
]]


--[[
    Zones
]]

kosmici.add("event", "zoneUpdate", function(dt, data) 
    local src = source
    if dt == "tryStart" then
        local zone = ZM.GetZone(data.id)
        if zone and not zone.progress.is then
            zone.progress.src = src
            zone.progress.is = true
            kosmici.call("tc", "zoneStart", {module="zombiemod", player=src}, zone)
            ZM.Announce(functions.getTranslation(main.lang, "ZONE_START", zone.name))
        else
            ZM.Announce(functions.getTranslation(main.lang, "ZONE_STARTED_ALREADY"))
        end
    elseif dt == "cancel" then
        local zone = ZM.GetZone(data.id)
        if zone and zone.progress.is and zone.progress.src == src then
            zone.progress.src = nil
            zone.progress.is = false
            kosmici.call("tc", "zoneStop", {module="zombiemod", player=src}, false, zone)
            ZM.Announce(functions.getTranslation(main.lang, "ZONE_CANCEL", zone.name))
        end
    elseif dt == "stop" then
        local zone = ZM.GetZone(data.id)
        if zone and zone.progress.is and zone.progress.src == src then
            local drop = ZM.GenerateZoneDrop()
            local dropStr = ""
            for i=1,#drop do
                dropStr = dropStr..drop[i].count.."x "..drop[i].name
                if i ~= #drop then
                    dropStr = dropStr..", "
                else
                    dropStr = dropStr.."."
                end
            end
            --[[
                Dawanie itemków
            ]]
            zone.progress.src = nil
            zone.progress.is = false
            kosmici.call("tc", "zoneStop", {module="zombiemod", player=src}, true, zone, dropStr)
            ZM.Announce(functions.getTranslation(main.lang, "ZONE_TAKEN", zone.name))
        end
    end
end, {module="zombiemod",net=true})

--[[
    Zones - END
]]

--[[
    Clans
]]
ZM.Clans = {
    Bases = {
        [1] = {
            EnterIn = vector3(201.33, -1006.76, -99.01),
            Storages = {
                [1] = vector3(192.21, -995.78, -99.01),
                [2] = vector3(205.19, -1003.26, -99.01),
                [3] = vector3(191.15, -1004.26, -99.01),
                [4] = vector3(211.48, -999.19, -99.01)
            }
        },
        [2] = {
            EnterIn = vector3(1088.3, -3099.49, -39.01),
            Storages = {
                [1] = vector3(1091.3, -3096.05, -39.01),
                [2] = vector3(1097.73, -3096.38, -39.01),
                [3] = vector3(1101.26, -3096.27, -39.01),
                [4] = vector3(1103.91, -3096.22, -39.01),
            }
        },
        [3] = {
            EnterIn = vector3(1048.71, -3097.3, -39.01),
            Storages = {
                [1] = vector3(1053.03, -3095.63, -39.01),
                [2] = vector3(1057.87, -3095.72, -39.01),
                [3] = vector3(1062.64, -3095.7, -39.01),
                [4] = vector3(1067.69, -3095.79, -39.01)
            }
        },
        [4] = {
            EnterIn = vector3(992.95, -3097.9, -39.01),
            Storages = {
                [1] = vector3(1003.63, -3097.39, -39.01),
                [2] = vector3(1008.29, -3097.17, -39.01),
                [3] = vector3(1013.31, -3097.25, -39.01),
                [4] = vector3(1018.11, -3096.58, -39.01)
            }
        },
    },
    Players = {}
}
ZM.GetPlayerClan = function(src)
    --[[
        TODO: Dorobienie bazy, i zrobienie tworzenia/upgrade'owania itp klanów
    ]]
end
kosmici.add("event", "enterClan", function() 

end, {module="zombiemod", net=true})