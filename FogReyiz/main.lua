if pcall(require, "lldebugger") then
  require("lldebugger").start()
end
if pcall(require, "mobdebug") then
  require("mobdebug").start()
end

function love.load()
  sound = love.audio.newSource("you-cant-talk-to-me-like-that.mp3", "static")
  love.graphics.setFont(love.graphics.newFont(54))
  fogReyizImage = love.graphics.newImage("reyiz.png")
end

function love.update()
  playingAudio = love.audio.getSourceCount() > 0
end

function love.draw()
  love.graphics.setColor(255, 255, 255, 255)
  if playingAudio then
    love.graphics.setColor(200, 0, 0, 255)
  end
  love.graphics.draw(fogReyizImage, 200, 30, 0, 0.5, 0.5)
  love.graphics.setColor(200, 58, 0, 255)
  love.graphics.print('Click?', 400, 300)
end

function love.mousepressed(x, y, button, istouch)
  if button == 1 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
    love.event.push('playSound')
  end
end

function love.handlers.playSound()
  sound:seek(0, "seconds")
  sound:play()
end
