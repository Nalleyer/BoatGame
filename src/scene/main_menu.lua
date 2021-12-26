require("src/scene")
local m = scene:extend()

local WATER_HEIGHT = const.HEIGHT / 3 * 1
local WATER_Y = const.HEIGHT - WATER_HEIGHT

function m:draw()
    love.graphics.clear(color.GRAY_2)
    love.graphics.setColor(color.BLUE)
    love.graphics.rectangle("fill", 0, WATER_Y, const.WIDTH, WATER_HEIGHT)
end

main_menu = m