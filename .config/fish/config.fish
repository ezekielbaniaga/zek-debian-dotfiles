if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    echo \n
	echo ┏━━━━━━━━━━━━━━━━━━━━┓\tDebian GNU/Linux: (set_color cyan; uname -onrm; set_color normal)
	echo ┃ --= boy_deploy =-- ┃\tFish Shell: (set_color cyan; fish --version; set_color normal)
	echo ┗━━━━━━━━━━━━━━━━━━━━┛\tDate: (set_color cyan; date; set_color normal)
    echo \n
end

function fish_prompt
    printf '\n╺╾┬╼╸ %s %s@%s %s %s %s %s %s %s%s%s \n  ╰╼╸ ╲$ ' \
      (set_color -b cyan)(set_color black) $USER $hostname (set_color normal) \
      (set_color -b brblack)(set_color black) (prompt_pwd) (set_color normal) \
      (set_color cyan) (fish_git_prompt) (set_color normal)
end

#
# alias for dotfiles tracker
#
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

#
# aliases for exa
#
alias ls='exa --icons'
alias ll='exa -lah --icons'

#
# Neovim Path
#
fish_add_path "/opt/nvim"

#
# Zig Path
#
fish_add_path "/opt/zig/zig-linux-x86_64-0.13.0"

#
# Node JS
#
fish_add_path "/opt/nodejs/node-v20.15.1-linux-x64/bin"

#
# nginx
#
fish_add_path "/opt/nginx/sbin"
