require "colors"
bf = require("breezefield")

Level2 = {}

RectangleCollider = {x = 0, y = 0, width = 10, height = 10}
function RectangleCollider:create(x, y, width, height)
  self.x = x
  self.y = y
  self.width = width
  self.height = height
  self.points = {
    {x = self.x, y = self.y}, {x = self.x + self.width, y = self.y},
    {x = self.x + self.width, y = self.y + self.height},
    {x = self.x, y = self.y + self.height}
  }
  return bf.Collider.new(
           world, "Polygon", {
      self.points[1].x, self.points[1].y, self.points[2].x, self.points[2].y,
      self.points[3].x, self.points[3].y, self.points[4].x, self.points[4].y
    }
         )
end

function Level2:load(sx, sy)
  world = bf.newWorld(0, 90.81, true)
  print(world:getGravity())

  ground = RectangleCollider:create(10, sy - 20, sx - 20, 10)
  ground = ground:setType("static")
  ball = bf.Collider.new(world, "Circle", sx / 2, sy / 2, 3)

end

function Level2:update(dt, sx, sy)
  world:update(dt)
  if love.keyboard.isDown("right") then
    ball:applyForce(10, 0)
  elseif love.keyboard.isDown("left") then
    ball:applyForce(-10, 0)
  elseif love.keyboard.isDown("up") then
    ball:applyForce(0, -5)
  end
end

function Level2:draw(sx, sy)
  love.graphics.clear()
  world:draw()
end
