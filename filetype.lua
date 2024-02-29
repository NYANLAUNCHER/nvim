-- see: "https://github.com/neovim/neovim/pull/16600#issuecomment-990409210"
vim.filetype.add({
  extension = {
    -- GLSL, see: "https://stackoverflow.com/questions/6432838/what-is-the-correct-file-extension-for-glsl-shaders"
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
    -- Javascript (sucks)
    cps = 'javascript',
  },
})
