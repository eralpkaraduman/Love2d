conf = {width = 400, height = 240, scale = 4}

function love.conf(t)
  t.window.width = conf.width * conf.scale
  t.window.height = conf.height * conf.scale
  t.window.fullscreen = false
  t.window.vsync = 0
end
