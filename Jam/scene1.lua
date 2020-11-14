require "colors"
require "centerTitleText"
require "love-animation/animation"

Scene1 = {}

local finnPosition = {x = 150, y = -20}

local finnSprite = LoveAnimation.new('FinnSprite.animation.lua');

function Scene1:load(sx, sy, sm)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

  finnPosition.y = sy / 2

  finnSprite:setState("jump")
end

function Scene1:update(dt, sx, sy, sm)
  finnSprite:update(dt)
  finnPosition.x = finnPosition.x + (120 * dt)
  if (finnPosition.x > sx) then
    finnPosition.x = -20
  end

  finnSprite:setPosition(finnPosition.x, finnPosition.y)

  if love.keyboard.isDown('w', 'a', 's', 'd', 'up', 'down', 'left', 'right',
                          'space', 'return', 'z', 'x', 'c') then
    sm:switch(2)
  end
end

function Scene1:draw(sx, sy, sm)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

  centerTitleText.draw('Could you pass the salt please?', 0, 0, sx)

  love.graphics.setColor(1, 1, 1, 1)

  finnSprite:draw()
end

function Scene1:unload()
  print("unload1")
end
