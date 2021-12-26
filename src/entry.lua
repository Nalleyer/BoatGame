require("src/class")
require("src/const")
require("src/color")
require("src/game")

local g = love.graphics

function love.load()
    g.setDefaultFilter("nearest", "nearest")
    g.setLineStyle("rough")
    g.setScissor(0, 0, const.WIDTH * const.SCALE, const.HEIGHT * const.SCALE)

    local main_font = g.newFont("assets/Silver.ttf", 19) -- 19是字体内禀属性，改了模糊了
    g.setFont(main_font)

    -- 暴露到全局，方便大家调
    game = game:new()
    game:on_load()
end

function love.draw()
    g.scale(const.SCALE, const.SCALE)
    game:draw()
end
