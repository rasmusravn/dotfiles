local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		"JetBrains Mono",
	}),
	window_padding = {
		left = 20,
		right = 10,
		top = 10,
		bottom = 10,
	},
	window_background_opacity = 0.76,
	color_scheme = "Gruvbox Dark (Gogh)",
	enable_tab_bar = false,
}
