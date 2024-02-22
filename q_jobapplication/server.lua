local webhooks =  {
    {type = 'LSPD', webhook = ''},
    {type = 'EMS', webhook = ''},
}

RegisterNetEvent('q:a:s:s')
AddEventHandler('q:a:s:s', function(j, a, b, c, d, e, f, g)
    SendToDiscord(j, a, b, c, d, e, f, g)
end)

function SendToDiscord(j, a, b, c, d, e, f, g)
    local webhook = nil
    for _, w in ipairs(webhooks) do
        if w.type == j then
            webhook = w.webhook
            break
        end
    end

    local connect = {
        title = "New application",
        color = 2968063,
        fields = {
            {
                name = "__*Name & Surname*__",
                value = "```" .. a .. "```",
                inline = true,
            },
            {
                name = "__*Age*__",
                value = "```" .. b .. "```",
                inline = true,
            },
            {
                name = "__*Phone number*__",
                value = "```" .. c .. "```",
                inline = true,
            },
            {
                name = "__*Work experience*__",
                value = "```" .. d .. "```",
                inline = true,
            },
            {
                name = "__*Why he need to for that job*__",
                value = "```" .. e .. "```",
                inline = true,
            },
            {
                name = "__*He Worked before*__",
                value = "```" .. f .. "```",
                inline = true,
            },
            {
                name = "__*What he do in weekdays*__",
                value = "```" .. g .. "```",
                inline = true,
            },
        },
        footer = {
            text = os.date("Date: %d.%m.%Y \nClock: %X"),
        },
    }

    PerformHttpRequest(
        webhook,
        function(err, text, headers)
        end,
        'POST',
        json.encode({embeds = {connect}}),
        { ['Content-Type'] = 'application/json' }
    )
end
