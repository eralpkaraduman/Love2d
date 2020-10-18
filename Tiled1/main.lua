if pcall(require, "lldebugger") then
  require("lldebugger").start()
end
if pcall(require, "mobdebug") then
  require("mobdebug").start()
end

--[[
Open tilemap.tmx in tiled
tileset needs to be embedded
export it as tilemap.lua
--]]

require("loadTiledMap")

function love.load()
  map = loadTiledMap("tilemap")
end

function love.draw()
  map:draw()
end

function love.update(dt)
  map:update(dt)
end
