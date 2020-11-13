if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
  require("lldebugger").start()
end

require "conf"
require "display"

function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest", 1)
  canvas = love.graphics.newCanvas(conf.width, conf.height)
  canvas:setFilter("nearest", "nearest")
  canvas:renderTo(
    function()
      Display:load(conf.displayWidth, conf.displayHeight)
    end
  )
end

function love.update(dt)
  Display:update(dt, conf.displayWidth, conf.displayHeight)
end

function love.draw()
  canvas:renderTo(
    function()
      Display:draw(conf.displayWidth, conf.displayHeight)
    end
  )

  love.graphics.setColor(1, 1, 1, 1) -- reset color before drawing to canvas
  love.graphics.draw(canvas, 0, 0, 0, conf.renderScale * conf.windowScale)
end

--[[
TODO
Implement scenes & transitions;
https://gitlab.com/V3X3D/love-libs/-/tree/master/TransitionMgr
]] --
