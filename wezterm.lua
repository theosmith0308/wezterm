local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Color Scheme
-- local scheme = "Moonfly (Gogh)"
local scheme = "Tokyo Night"
config.color_scheme = scheme

config.inactive_pane_hsb = {
	saturation = 0.8,
	brightness = 0.8,
}

config.command_palette_font_size = 12
config.command_palette_rows = 7

-- Window styles
config.window_padding = {
	left = 10,
	right = 5,
	top = 5,
	bottom = 0.5,
}

config.scrollback_lines = 2000
config.use_dead_keys = false
config.tab_max_width = 25
config.tab_bar_at_bottom = false
config.adjust_window_size_when_changing_font_size = false
config.audible_bell = "Disabled"
config.initial_cols = 100
config.initial_rows = 28
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = false
config.show_tab_index_in_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.unicode_version = 15
-- config.window_background_opacity = 0.95
config.webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[0]
config.front_end = "WebGpu"

-- Font Styles
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.harfbuzz_features = {
	"liga = 1",
}

config.freetype_load_flags = "NO_HINTING"
config.font_size = 11
config.hide_mouse_cursor_when_typing = true

-- Default Terminal
config.default_prog = { "zsh" }
config.default_cwd = os.getenv("PWD")

-- Tab Styles
config.use_fancy_tab_bar = false
-- config.tab_and_split_indices_are_zero_based = true
--
return config
