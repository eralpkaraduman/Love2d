require "colors"
require "centerTitleText"

screen = {}

function screen.init(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

end

function screen.draw(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)
  love.graphics.setColor(WHITE)
  centerTitleText.draw('Centered Title', 0, 0, sx)
end

return screen
