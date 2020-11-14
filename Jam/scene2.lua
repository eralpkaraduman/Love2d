require "colors"
require "centerTitleText"
require "love-animation/animation"

Scene2 = {}

function Scene2:load(sx, sy, sm)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)
end

function Scene2:update(dt, sx, sy, sm)

  if love.keyboard.isDown('escape') then
    sm:switch(1)
  end
end

function Scene2:draw(sx, sy, sm)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

  centerTitleText.draw('Scene 2', 0, 0, sx)

  love.graphics.setColor(1, 1, 1, 1)
end

function Scene2:unload()
  print("unload2")
end
