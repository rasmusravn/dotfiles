function note
	set -l options (fish_opt -s o -l obsidian)
	set options $options (fish_opt -s j -l jira)
	argparse $options -- $argv
	or return

	if set -q _flag_obsidian
		if test (count $argv) -eq 0
			echo "Error: Please provide a note name"
			return 1
		end
		nvim -c ":ObsidianOpen $argv[2]"
	else if set -q _flag_jira
		echo "Opening Jira tickets assigned to me..."
		# Add your Jira command here
		# Example: jira issue list --assignee $(jira me)
	else
		echo "Usage: note -o|--obsidian <note-name> | note -j|--jira"
		return 1
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
