export type Class = {}
export type Type = Class

-- SuperClass Module
local SuperClass = {}

local Class = setmetatable({}, SuperClass)
Class.__index = Class

function Class.new()
    local self = setmetatable(SuperClass.new(), Class)
    return self
end

return Class