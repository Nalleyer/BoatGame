local m = class()

function m:on_load()
    self:load_scene("main_menu")
end

function m:load_scene(name)
    local path = string.format("src/scene/%s", name)
    require(path)
    local c = _G[name]
    local scene = c:new()
    if self.current_scene then
        self.current_scene:on_leave()
    end
    self.current_scene = scene
    self.current_scene:on_load()
end

function m:draw()
    if self.current_scene then
        self.current_scene:draw()
    end
end

game = m