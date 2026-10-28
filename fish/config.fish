if status is-login
    if test -z "$DISPLAY" -a (tty) = /dev/tty1
        # Optional Wayland environment flags
        set -gx XDG_SESSION_TYPE wayland
        set -gx XDG_CURRENT_DESKTOP Hyprland

        # start-hyprland directly
        exec start-hyprland
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

starship init fish | source
