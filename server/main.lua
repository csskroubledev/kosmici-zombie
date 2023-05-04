kosmici = {
    modules = {},
    classes = {}
}

setmetatable(kosmici.modules, {

    __call = function(self, name)
        if self[name] then
            return self[name]
        end


        self[name] = {
            class = function()
                return name
            end
        }
        
        kosmici.log("Loading new module - " .. name)
        return self[name]
    end
})


kosmici.log = function(message)
    local time = os.time()
    local date = os.date("%H:%M:%S", time)

    local text = "^5[^7"..date.." ^5|^7 " .. debug.getinfo(2, "S").short_src .. " ^5|^7 KOSMICI^5]^7: " .. message
    print(text)
end

kosmici.add = function(name, title, callback, options)
    if name == "thread" then
        Citizen.CreateThread(callback)
    elseif name == "event" then
        if not options then
            options = {net = false, module = "base"}
        end

        if not options.module then
            options.module = "base"
        end

        if options.net then
            RegisterNetEvent('kosmici:' .. options.module .. '$'.. title)
        end

        local origCallback = callback
        callback = function(...)

            return origCallback(...)
        end

        AddEventHandler('kosmici:' .. options.module .. '$'.. title, callback)
    elseif name == "command" then
        if not options then
            options = {restricted = false}
        end
        RegisterCommand(title, callback, options.restricted)
    end
end



kosmici.call = function(name, title, options, ...)
    if name == "tc" then
        if not options then
            return
        end

        if not options.player then
            kosmici.log("Couldn't send TC [" .. options.module .. " / " .. title .. " / NO PLAYER SPECIFIED]")
            return
        end

        if not options.module then
            kosmici.log("Couldn't send TC [ " .. title .. " / NO MODULE SPECIFIED]")
            return
        end

        if not title then
            kosmici.log("Couldn't send TC [ " .. options.module .. " / NO TITLE SPECIFIED]")
            return
        end

        TriggerClientEvent('kosmici:' .. options.module .. '$' .. title, options.player, ...)
    elseif name == "t" then
        TriggerEvent('kosmici:' .. options.module .. '$' .. title, ...)
    end
end