if pcall(require, "lldebugger") then require("lldebugger").start() end
if pcall(require, "mobdebug") then require("mobdebug").start() end

local text
local font
 
function love.load()
    love.window.setTitle("dunyanin en kotu oyunu")
    love.window.setMode(
        400, 240,
        {
            resizable=true,
            vsync=false,
            -- minwidth=400,
            -- minheight=300
            highdpi=true
        }
    )
    font = love.graphics.setNewFont(16)
end
 
function love.update(dt)
    text = "space'e bas"

    if love.keyboard.isDown("space") then
        text = "kazandin tamam abartma."
    end
end
 
function love.draw()
    love.graphics.rectangle("fill", 100, 200, 50, 80)
end