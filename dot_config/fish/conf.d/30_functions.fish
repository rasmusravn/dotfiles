function note
	nvim -c ":ObsidianNew "$argv[1]
end

function work
	swaymsg workspace 2; swaymsg exec firefox
	swaymsg workspace 3; swaymsg exec obsidian
	swaymsg workspace 4; swaymsg exec proton-mail
end
