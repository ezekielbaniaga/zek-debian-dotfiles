if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    echo \n
	echo ' ' ╭╼╸ ┏━━━━━━━━━━━━━━━━━━━━┓\t\uf306 Debian GNU/Linux: (set_color cyan; uname -onrm; set_color normal)
	echo ''╺╾┼╼╸ ┃ --= boy_deploy =-- ┃\t\uf489 Fish Shell: (set_color cyan; fish --version; set_color normal)
	echo ' ' ╰╼╸ ┗━━━━━━━━━━━━━━━━━━━━┛\t\ueab0 Date: (set_color cyan; date; set_color normal)
	echo '                            '\t\ue38b Uptime: (set_color cyan; uptime --pretty; set_color normal)
	echo '                            '\t\uf4e3 Since: (set_color cyan; uptime --since; set_color normal)
	echo '                            '\t\uf004 Favs: (set_color cyan) \uf31a \ue61e \ue6a9 \ue62b \ue6ae \ue76e \ue702  (set_color normal)
    echo \n
end

function fish_prompt
    printf '\n╺╾┬╼╸%s%s %s@%s %s%s%s%s%s%s%s%s%s%s\n  │\n  ╰╼╸\ue285 ' \
      (set_color -b black)(set_color cyan)\ue0b2(set_color normal) \
      (set_color -b cyan)(set_color black)\uf306 $USER $hostname (set_color normal) \
      (set_color -b brblack)(set_color black)' '\uf07c' '(prompt_pwd)' '(set_color normal) \
      (set_color -b black)(set_color brblack)\ue0b0(set_color normal) \
      (set_color -b white)(set_color black)\ue0b0(set_color normal) \
      (set_color -b white)(set_color black)' '\ue725(fish_git_prompt)(set_color normal) \
      (set_color -b black)(set_color white)\ue0b0(set_color normal)
end

# intro
unimatrix -s 100 -a -f -w

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
# Paths for:
#
# - Neovim 
# - Zig
# - Node JS
# - nginx
# - IntelliJ
# - Oracle JDK 8
# - Maven 3.5.0
#
fish_add_path "/opt/nvim"
fish_add_path "/opt/zig/zig-linux-x86_64-0.13.0"
fish_add_path "/opt/nodejs/node-v20.15.1-linux-x64/bin"
fish_add_path "/opt/nginx/sbin"
fish_add_path "/opt/intellij/idea-IC-241.18034.62/bin"
fish_add_path "/opt/java/oracle-jdk8/jdk1.8.0_202/bin"
fish_add_path "/opt/maven/3.5.0/apache-maven-3.5.0/bin"

