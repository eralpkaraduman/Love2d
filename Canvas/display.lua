require "colors"
require "centerTitleText"

display = {}

function display.init(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)

end

function display.draw(sx, sy)
  love.graphics.clear()
  love.graphics.setColor(BLACK)
  love.graphics.rectangle('fill', 0, 0, sx, sy)
  love.graphics.setColor(WHITE)
  centerTitleText.draw('Centered Title', 0, 0, sx)
end

return display
