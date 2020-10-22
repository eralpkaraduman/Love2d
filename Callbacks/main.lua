if pcall(require, "lldebugger") then
  require("lldebugger").start()
end
if pcall(require, "mobdebug") then
  require("mobdebug").start()
end

local image, width, height

function love.load()
  image = love.graphics.newImage("cake.png")
  local f = love.graphics.newFont(54)
  love.graphics.setFont(f)
  love.graphics.setBackgroundColor(255, 255, 255)
end

function love.draw()
  -- Draw image
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.draw(image, 10, 10)
  -- Draw text
  love.graphics.setColor(0, 0, 0, 255)
  love.graphics.print('Cake!', 400, 300)
end

function love.quit()
  print("Thanks for playing! Come back soon!")
end
