require("src/const")
local c = const
function love.conf(t)
    t.window.title = "船"
    t.window.width = c.WIDTH * c.SCALE
    t.window.height = c.HEIGHT * c.SCALE
    -- t.window.resizable = true
end