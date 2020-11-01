require "level1"
require "level2"

Display = {}

function Display:load(sx, sy)
  -- Level1:load(sx, sy)
  Level2:load(sx, sy)
end

function Display:update(dt, sx, sy)
  -- Level1:update(dt, sx, sy)
  Level2:update(dt, sx, sy)
end

function Display:draw(sx, sy)
  -- Level1:draw(sx, sy)
  Level2:draw(sx, sy)
end
