require "colors"
require "centerTitleText"
require "lib/love-animation/animation"

display = {}

local finnSprite = LoveAnimation.new('FinnSprite.animation.lua');

function display.init(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

  finnSprite:setState("jump")
end

function display.update(dt)
  finnSprite:update(dt)
end

function display.draw(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)
  love.graphics.setColor(WHITE)
  centerTitleText.draw('Centered Title', 0, 0, sx)

  finnSprite:draw()
end

return display
