-- see: "https://github.com/neovim/neovim/pull/16600#issuecomment-990409210"
vim.filetype.add({
  extension = {
    -- GLSL
    vert = 'glsl', -- vertex shader
    tesc = 'glsl', -- tessellation control shader
    tese = 'glsl', -- tessellation evaluation shader
    geom = 'glsl', -- geometry shader
    frag = 'glsl', -- fragment shader
    comp = 'glsl', -- compute shader
    glsl = 'glsl',
    -- GCode
    gcode = 'gcode',
    ngc = 'gcode',
    nc = 'gcode',
    cnc = 'gcode',
    tap = 'gcode',
    -- Zig
    zon = "zig",
    -- Javascript (sucks)
    jsx = 'javascript',-- same configs for jsx since its just an extention to js
    cps = 'javascript',-- fusion 360 post processor
  },
})
