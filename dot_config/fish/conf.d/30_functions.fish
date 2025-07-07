function note
	nvim -c ":ObsidianNew "$argv[1]
end

function work
	swaymsg workspace 2; swaymsg exec firefox
	swaymsg workspace 10; swaymsg exec obsidian
	sleep 3
	swaymsg workspace 9; swaymsg exec proton-mail
	sleep 3
	swaymsg workspace 1
end

function ts
	tmux new-session -A -s $argv[0]
end
