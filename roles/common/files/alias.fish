abbr -a -g df 'df -h'
abbr -a -g du 'du -h'
abbr -a -g mkdir 'mkdir -pv'

# moving
abbr -a -g .. 'cd ..'
abbr -a -g ... 'cd ../../'
abbr -a -g .... 'cd ../../../'
abbr -a -g ..... 'cd ../../../../'
abbr -a -g - 'cd -'

abbr -ag la "eza -la"
abbr -ag l "eza -la"
abbr -ag bat batcat
abbr -ag less batcat

# Git
# abbr -a -g g git
# abbr -a -g ga 'git add'
# abbr -a -g gaa 'git add --all'
# abbr -a -g gco 'git checkout'
# abbr -a -g gcob 'git checkout -b'
# abbr -a -g gdf 'git diff'
# abbr -a -g gf 'git fetch'
# abbr -a -g gl 'git pull'
# abbr -a -g gp 'git push'
# abbr -a -g gss 'git status'

# python
# abbr -a -g va 'source venv/bin/activate.fish'

# Dropbox ignore
abbr -ag dbox_ignore "attr -s com.dropbox.ignored -V 1"


# laptop extra monitor
abbr -ag add_monitor "xrandr --output HDMI-A-0 --auto --left-of eDP"
abbr -ag rm_monitor "xrandr --output HDMI-A-0 --off"
