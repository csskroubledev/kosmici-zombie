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
            name = name
        }
        
        kosmici.log("Loading new module - " .. name)
        return self[name]
    end
})


kosmici.log = function(message)
    local text = "^5[KOSMICI^5]^7: " .. message
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
            kosmici.log("Called event: " .. options.module .. ":" .. title)
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
    if name == "ts" then
        print("calling, " ..  'kosmici:' .. options.module .. '$' .. title, ...)
        TriggerServerEvent('kosmici:' .. options.module .. '$' .. title, ...)
    elseif name == "t" then
        TriggerEvent('kosmici:' .. options.module .. '$' .. title, ...)
    end
end