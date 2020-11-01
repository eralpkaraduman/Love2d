require "level1"

Display = {}

function Display:init(sx, sy)
  Level1:init(sx, sy)
end

function Display:update(dt, sx, sy)
  Level1:update(dt, sx, sy)
end

function Display:draw(sx, sy)
  Level1:draw(sx, sy)
end
