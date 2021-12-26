boat = class()
-- 船是啥呢，首先得有个底座，然后上面得有东西

local MAX_HEIGHT = 10
local MAX_WIDTH = 10

boat.TILE_CORE = 1

function boat:init()
    -- 外面能设x
    self.x = 0
    self.is_player = false

    -- 每个船是一个tile_map
    self.tile_map = {}
    self.height = 1
end

-- 假设船总是2/3露在水面以上
function boat:draw(water_y)
end