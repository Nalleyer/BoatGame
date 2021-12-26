require("src/scene")
local m = scene:extend()

local WATER_HEIGHT = const.HEIGHT / 3 * 1
local WATER_Y = const.HEIGHT - WATER_HEIGHT
local WATER_COLOR = clone(color.BLUE)
WATER_COLOR[4] = 0.5

function m:draw()
    love.graphics.clear(color.GRAY_2)
    -- draw boats
    love.graphics.setColor(color.BLACK)
    love.graphics.rectangle("fill", 200, WATER_Y - 30, const.WIDTH - 400, 100)
    --
    love.graphics.setColor(WATER_COLOR)
    love.graphics.rectangle("fill", 0, WATER_Y, const.WIDTH, WATER_HEIGHT)
end

main_scene = m
