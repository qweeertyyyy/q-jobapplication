ESX = nil
ESX = exports["es_extended"]:getSharedObject()

for _, qk in ipairs(q.y) do
    exports.ox_target:addBoxZone({
        coords = qk.K,
        size = vec3(1, 1, 1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = qk.N,
                icon = qk.I,
                label = qk.M..' '..qk.N,
                onSelect = function(data)
                    OpenLIB(qk.N, q.ls, q.s)
                end,
            }
        }
    })
end

function OpenLIB(n, q, s)
    local input = lib.inputDialog(q[1].ln..' ' .. n, {
        {type = 'input', label = q[2].lfn, description = 'Write here!', required = true},
        {type = 'number', label = q[3].la, description = 'Write here!', required = true},
        {type = 'number', label = q[4].lnr, description = 'Write here!', required = true},
        {type = 'textarea', label = q[5].lwe, description = 'Write here!', required = true},
        {type = 'textarea', label = q[6].laj, description = 'Write here!', required = true},
        {type = 'textarea', label = q[7].lab, description = 'Write here!', required = true},
        {type = 'textarea', label = q[8].lwd, description = 'Write here!', required = true},
    })

    if input then
        if n and input[1] and input[2] and input[3] and input[4] and input[5] and input[6] and input[7] then
            TriggerServerEvent('q:a:s:s', n, input[1], input[2], input[3], input[4], input[5], input[6], input[7])
            lib.notify({title = 'Success', description = s[1].ns, type = 'success'})
        else
            lib.notify({title = 'Failed', description = s[2].nf, type = 'error'})
        end
    else
        lib.notify({title = 'Information', description = s[3].ni, type = 'info'})
    end
end

