#  https://fishshell.com/docs/current/index.html

# Environment variables - https://fishshell.com/docs/current/cmds/set.html
set -gx EDITOR nvim
set -gx GIT_EDITOR nvim
set -gx BUNDLER_EDITOR $EDITOR
set -gx MANPAGER bat
set -gx XDG_CONFIG_HOME "$HOME/.config"


if status is-interactive
    # Commands to run in interactive sessions can go here
    source $XDG_CONFIG_HOME/fish/alias.fish

    # https://github.com/starship/starship#fish
    starship init fish | source

    # https://github.com/ajeetdsouza/zoxide
    zoxide init fish | source

    # direnv
    direnv hook fish | source

    # venv
    function va
        if test -d venv
            source venv/bin/activate.fish
        else
            source .venv/bin/activate.fish
        end
    end

    # create venv
    function venv
        uv venv venv
        attr -s com.dropbox.ignored -V 1 venv
        # echo "export VIRTUAL_ENV=$(pwd)/venv" >.envrc
    end
end
