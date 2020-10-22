conf = {width = 400, height = 240, scale = 3}

function love.conf(t)
  t.window.width = conf.width * conf.scale
  t.window.height = conf.height * conf.scale
end
