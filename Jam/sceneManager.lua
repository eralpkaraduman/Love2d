require "scene1"
require "scene2"

SceneManager = {scenes = {Scene1, Scene2}, currentSceneIndex = 1, sx, sy}

function SceneManager:load(sx, sy)
  self.sx = sx
  self.sy = sy
  self.scenes[self.currentSceneIndex]:load(self.sx, self.sy, self)
end

function SceneManager:switch(sceneIndex)
  self.scenes[self.currentSceneIndex]:unload()
  self.currentSceneIndex = sceneIndex
  self.scenes[self.currentSceneIndex]:load(self.sx, self.sy, self)
end

function SceneManager:update(dt)
  self.scenes[self.currentSceneIndex]:update(dt, self.sx, self.sy, self)
end

function SceneManager:draw()
  self.scenes[self.currentSceneIndex]:draw(self.sx, self.sy, self)
end
