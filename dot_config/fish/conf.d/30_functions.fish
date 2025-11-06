function note
	if set -q argv[o]bsidian
		nvim -c ":ObsidianOpen "$argv[1]
		return
	else if set -q argv[j]ira
		echo "Opening Jira ticket: "$argv[1]
	end
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
	tmux new-session -A -s $argv[1]
end
