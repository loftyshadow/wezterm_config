local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'JetBrainsMono Nerd Font' -- JetBrains Mono
local font_size = platform().is_win and 11 or 9

return {
   font = wezterm.font(font),
   font_size = font_size,
   warn_about_missing_glyphs = false,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
