require "colors"
require "centerTitleText"
require "lib/love-animation/animation"

display = {}

local finnPosition = {x = 50, y = 120}

local finnSprite = LoveAnimation.new('FinnSprite.animation.lua');

function display.init(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

  finnSprite:setState("jump")
end

function display.update(dt, sx, sy)
  finnSprite:update(dt)
  finnPosition.x = finnPosition.x + (120 * dt)
  if (finnPosition.x > sx) then
    finnPosition.x = -20
  end

  finnSprite:setPosition(finnPosition.x, finnPosition.y)
end

function display.draw(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)
  love.graphics.setColor(WHITE)
  centerTitleText.draw('SPRITE ANIMATION', 0, 0, sx)

  love.graphics.setColor(1, 1, 1, 1)
  finnSprite:draw()
end

return display
