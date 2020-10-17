if pcall(require, "lldebugger") then require("lldebugger").start() end
if pcall(require, "mobdebug") then require("mobdebug").start() end

function love.draw() love.graphics.print('Hello World!', 400, 300) end
