require("colors")

font = love.graphics.newFont('ArgentPixelCF.fnt', "ArgentPixelCF_0.png")

centerTitleText = {}

function centerTitleText.draw(text, x, y, maxw)
  love.graphics.setColor(WHITE)
  love.graphics.setFont(font)
  love.graphics.printf(text, x, y, maxw, 'center')
end

return centerTitleText
