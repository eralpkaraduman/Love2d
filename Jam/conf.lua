conf = {
  width = 400, -- base window width
  height = 240, -- base window height
  windowScale = 1, -- number go big -> window size go big
  renderScale = 2 -- number go big -> pixels go big
}

conf.windowWidth = conf.width * conf.windowScale
conf.windowHeight = conf.height * conf.windowScale

conf.displayWidth = conf.width / conf.renderScale
conf.displayHeight = conf.height / conf.renderScale

function love.conf(t)
  t.window.width = conf.windowWidth
  t.window.height = conf.windowHeight
  t.window.fullscreen = false
  t.window.vsync = 0
  -- t.console = true
end
