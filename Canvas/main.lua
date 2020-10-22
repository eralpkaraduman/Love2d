require "conf"

BLACK = {50 / 255, 47 / 255, 41 / 255, 1}
WHITE = {177 / 255, 174 / 255, 168 / 255, 1}

function love.load()
  canvas = love.graphics.newCanvas(conf.width, conf.height)
  love.graphics.setCanvas(canvas)
  love.graphics.clear()
  love.graphics.setBlendMode("alpha")
  love.graphics.setColor(1, 0, 0, 0.5)
  love.graphics.rectangle('fill', 0, 0, 100, 100)
  love.graphics.setCanvas()
end

function love.draw()
  love.graphics.scale(conf.scale, conf.scale)
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.rectangle("fill", 0, 0, 1, 1)

  love.graphics.setColor(1, 1, 1, 1)
end
