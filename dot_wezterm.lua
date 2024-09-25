local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- if wezterm.gui.get_appearance():find("Dark") then
config.color_scheme = 'nord'
-- else
--   config.color_scheme = 'Tokyo Night Day'
-- end

config.font_size = 14

config.keys = {
  {
    key = 'Enter',
    mods = 'CMD',
    action = wezterm.action.ToggleFullScreen,
  },
}

config.cursor_thickness = 2

return config
