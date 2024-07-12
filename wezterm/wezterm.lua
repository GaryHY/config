-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Set background to same color as neovim
-- config.colors = {}
-- config.colors.background = '#111111'
config.color_scheme = 'Rosé Pine (base16)'


config.font = wezterm.font_with_fallback {
  'FiraCode Nerd Font',
  'Berkeley Mono',
  'nonicons',
}

-- TODO: change that depending on the screen you  use
-- config.font_size = 16.5
config.font_size = 18

-- default is true, has more "native" look
config.use_fancy_tab_bar = false

-- I don't like putting anything at the ege if I can help it.
config.enable_scroll_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.tab_bar_at_bottom = true
config.freetype_load_target = "HorizontalLcd"

-- and finally, return the configuration to wezterm
return config
