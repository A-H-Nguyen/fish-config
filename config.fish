set -gx PATH_TO_LLVM_PROJECT /home/andrew/Projects/llvm-21-1-8 
set -agx LIBRARY_PATH  /home/andrew/Projects/llvm-21-1-8/install/lib/x86_64-unknown-linux-gnu
set -agx LIBRARY_PATH  /home/andrew/Projects/llvm-21-1-8/install/lib/nvptx64-nvidia-cuda
set -agx LD_LIBRARY_PATH /home/andrew/Projects/llvm-21-1-8/install/lib/x86_64-unknown-linux-gnu
set -agx LD_LIBRARY_PATH /home/andrew/Projects/llvm-21-1-8/install/lib/nvptx64-nvidia-cuda

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
    

    if test -f "$(pwd)/.venv/bin/activate.fish"
        echo "Try to activate python venv in: $(pwd)"
        source "$(pwd)/.venv/bin/activate.fish"
    end
end
