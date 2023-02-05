return function ()

    local alpha = require('alpha')
    local math = require('math')
    math.randomseed(os.time())

    local quotes = require 'vagabond-greeter.quotes'
    local q = quotes[math.random(#quotes)]

    local layout = { { type = 'padding', val = 15 } }

    if (type(q) == 'table') then
        for _, v in ipairs(q) do
            table.insert(layout, { type = 'text', val = v, opts = { position = 'center' } })
        end
    else
        table.insert(layout, { type = 'text', val = q, opts = { position = 'center' } })
    end


    local config = { layout = layout }

    alpha.setup(config)

end
