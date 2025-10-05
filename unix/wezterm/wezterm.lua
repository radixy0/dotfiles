local wezterm = require 'wezterm'
local config = {}

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

-- SHELL
config.default_prog = { 'pwsh' }
config.default_cwd = "C:\\Development"

-- COLOR AND FONT
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
config.font = wezterm.font { family = 'JetBrainsMono Nerd Font Mono', weight = 'Regular' }


-- WINDOW
config.window_background_opacity = 0.8
config.window_decorations = "RESIZE"


-- TAB BAR
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

return config
