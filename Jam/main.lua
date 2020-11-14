if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
  require("lldebugger").start()
end

--

require "conf"
require "sceneManager"

function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest", 1)
  canvas = love.graphics.newCanvas(conf.width, conf.height)
  canvas:setFilter("nearest", "nearest")
  canvas:renderTo(function()
    SceneManager:load(conf.displayWidth, conf.displayHeight)
  end)
end

function love.update(dt)
  SceneManager:update(dt)
end

function love.draw()
  canvas:renderTo(function()
    SceneManager:draw()
  end)

  love.graphics.setBlendMode("alpha", "premultiplied")
  love.graphics.setColor(1, 1, 1, 1) -- reset color before drawing to canvas
  love.graphics.draw(canvas, 0, 0, 0, conf.renderScale * conf.windowScale)
end
