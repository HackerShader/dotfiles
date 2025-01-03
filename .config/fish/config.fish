if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting
set -q fish_prompt_pwd_dir_length; or set -l fish_prompt_pwd_dir_length 1

set -l realhome ~

function fish_prompt
    set -l left (get_left_prompt)

    printf "\n$left\n> "
end

function get_left_prompt
    set_color cyan
    printf (date '+%H:%M');
    printf " "
    set_color -i blue;
    printf "Paithon";
    printf " ";
    set_color -i 5ecc8f;
    printf (prompt_pwd)
    printf " ";
    set_color normal
    printf (fish_git_prompt);
end

# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH ~/.bun/bin $PATH
