-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- or, changing the font size and color scheme.
config.font_size = 12
config.line_height = 1.2
config.font = wezterm.font("JetBrainsMono NF")

-- Theme
config.color_scheme = "Catppuccin Macchiato"

-- Apperance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	top = 10,
	bottom = 0,
	left = 10,
	right = 10,
}

-- Other Settings
config.max_fps = 120
config.prefer_egl = true

-- Finally, return the configuration to wezterm:
return config
