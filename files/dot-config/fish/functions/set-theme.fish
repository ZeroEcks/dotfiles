function set-theme -d "Set theme to dark or light"
    if test "$argv[1]" = "dark"
        set -xU theme dark
        kitty @ set-colors -a "~/.config/kitty/dark-theme.conf"
    else if test "$argv[1]" = "light"
        set -xU theme light
        kitty @ set-colors -a "~/.config/kitty/light-theme.conf"
    else
        echo "Invalid theme. Please choose 'dark' or 'light'."
    end
end

function set-theme-permanent -d "Set theme to dark or light"
    if test "$argv[1]" = "dark"
        set-theme dark
        cp ~/.config/kitty/dark-theme.conf ~/.config/kitty/current-theme.conf
    else if test "$argv[1]" = "light"
        set-theme light
        cp ~/.config/kitty/light-theme.conf ~/.config/kitty/current-theme.conf
    else
        echo "Invalid theme. Please choose 'dark' or 'light'."
    end
end
