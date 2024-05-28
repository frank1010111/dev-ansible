set -xg ENLARGE_YOUR_GIT_ALIAS_PREFIXED_WITH g

# https://gitlab.com/pinage404/omf_pkg_enlarge_your_git_alias/-/blob/snyk-fix-3a6aa2d92883f0dd46bb299545bcb0b5/functions/__omf_pkg_enlarge_your_git_alias_add_abbr.fish?ref_type=heads

if status is-interactive
    # from https://github.com/tj/git-extras/blob/5bffcb4c89e8acb9274deaf73cacccfa645290a6/bin/git-alias#L12
    set git_aliases (git config --get-regexp 'alias.*' | sed 's/^alias\.//')

    for git_alias in $git_aliases
        set part (string split --max 1 " " $git_alias)
        set alias_key (string join '' $ENLARGE_YOUR_GIT_ALIAS_PREFIXED_WITH $part[1])
        set alias_command $part[2]

        if string match --regex "^!" $alias_command >/dev/null
            set alias_command (string sub --start=2 $alias_command)
            abbr --add --global $alias_key $alias_command
        else
            abbr --add --global $alias_key git $alias_command
        end
    end
end
