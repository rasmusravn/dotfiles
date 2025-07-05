function note
	nvim -c ":ObsidianNew "$argv[1]
end

function work
	swaymsg workspace 2; swaymsg exec firefox
	swaymsg workspace 3; swaymsg exec obsidian
	sleep 1
	swaymsg workspace 4; swaymsg exec proton-mail
	sleep 1
	swaymsg workspace 1
end
