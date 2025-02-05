-- Applies a cubemap texture to a cube
-- Texture from Humus (www.humus.name)

function lovr.load()
  cube = lovr.graphics.newTexture({
    left = 'negx.jpg',
    right = 'posx.jpg',
    top = 'posy.jpg',
    bottom = 'negy.jpg',
    front = 'negz.jpg',
    back = 'posz.jpg'
  })

  shader = lovr.graphics.newShader([[
    out vec3 pos;
    vec4 lovrmain() {
      pos = VertexPosition.xyz;
      return DefaultPosition;
    }
  ]], [[
    in vec3 pos;
    uniform textureCube cube;
    vec4 lovrmain() {
      return getPixel(cube, pos);
    }
  ]])
end

function lovr.draw(pass)
  pass:setShader(shader)
  pass:send('cube', cube)
  pass:cube(0, 1.7, -3, 1, lovr.timer.getTime(), 1, 1, 1)
end
