function rgf
    rg --files | rg
end

function rgs
    rg --file-with-matches
end

function pure_attrs
    set --universal pure_show_system_time false
    set --universal pure_color_primary blue
    set --universal pure_color_normal normal
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x PATH $PATH /home/$(whoami)/src/go/bin
    set -x PATH $PATH /home/$(whoami)/.local/bin
    set -x PATH $PATH /home/$(whoami)/.cargo/bin
    set -x GOLANG_VERSION 1.22.0

    abbr --add src "cd /home/$(whoami)/Desktop/scripts"
    abbr --add tut "cd /home/$(whoami)/Desktop/tuts"

    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    pure_attrs
end

