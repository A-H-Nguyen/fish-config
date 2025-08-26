if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_cursor_default block

    set fish_greeting ""

    # Run neofetch or fastfetch whenever I open a new terminal emulator window
    # so that everyone knows that I use Arch, btw
    # * Is not run while inside tmux
    if status --is-interactive; and not set -q TMUX
        if type -q fastfetch
            fastfetch
        else if type -q neofetch
            neofetch
        end
    end

    set -g EDITOR "nvim"
end
