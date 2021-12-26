function clone(t)
    local lut = {}
    local new_t = {}
    local function clone_impl(t)
        if type(t) ~= "table" then
            return t
        elseif lut[t] then
            return lut[t]
        end
        lut[t] = new_t
        for k, v in pairs(t) do
            new_t[k] = clone_impl(v)
        end
        return setmetatable(new_t, getmetatable(t))
    end
    return clone_impl(t)
end