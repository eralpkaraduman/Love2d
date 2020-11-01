font = love.graphics.newFont('m5x7.ttf', 48)

centerTitleText = {}

function centerTitleText.draw(text, x, y, maxw)
  love.graphics.setFont(font)
  love.graphics.printf(text, x, y, maxw, 'center')
end

return centerTitleText
