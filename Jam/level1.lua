require "colors"
require "centerTitleText"
require "love-animation/animation"

Level1 = {}

local finnPosition = {x = 0, y = -20}

local finnSprite = LoveAnimation.new('FinnSprite.animation.lua');

function Level1:load(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

  finnPosition.y = sy / 2

  finnSprite:setState("jump")
end

function Level1:update(dt, sx, sy)
  finnSprite:update(dt)
  finnPosition.x = finnPosition.x + (120 * dt)
  if (finnPosition.x > sx) then
    finnPosition.x = -20
  end

  finnSprite:setPosition(finnPosition.x, finnPosition.y)
end

function Level1:draw(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

  centerTitleText.draw('Could you pass the salt please?', 0, 0, sx)

  love.graphics.setColor(1, 1, 1, 1)
  finnSprite:draw()
end
