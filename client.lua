RegisterNetEvent('cos_textui:show')
AddEventHandler('cos_textui:show', function(key, title, action)
    SendNUIMessage({
        type = "updateTextUI",
        key = key,
        title = title,
        action = action
    })
end)

RegisterNetEvent('cos_textui:hide')
AddEventHandler('cos_textui:hide', function()
    SendNUIMessage({
        type = "hideTextUI"
    })
end)

-- Přidání příkazu pro zobrazení TextUI s parametry
RegisterCommand('showtextui', function(source, args, rawCommand)
    local key = args[1] or 'E'
    local title = args[2] or 'TEXTUI'
    local action = table.concat(args, ' ', 3) or 'Start cutting tree'
    TriggerEvent('cos_textui:show', key, title, action)
end, false)

-- Přidání příkazu pro skrytí TextUI
RegisterCommand('hidetextui', function()
    TriggerEvent('cos_textui:hide')
end, false)
