if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
  require("lldebugger").start()
end

require "conf"
require "screen"

function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest", 1)
  canvas = love.graphics.newCanvas(conf.width, conf.height)
  canvas:setFilter("nearest", "nearest")
  canvas:renderTo(
    function()
      screen.init(conf.width, conf.height)
    end
  )
end

function love.update()
  canvas:renderTo(
    function()
      screen.draw(conf.width, conf.height)
    end
  )
end

function love.draw()
  love.graphics.setColor(1, 1, 1, 1) -- reset color before drawing to canvas
  love.graphics.setBlendMode("alpha")
  love.graphics.draw(canvas, 0, 0, 0, conf.scale)
end
