if status is-interactive
    if test (uname) = Darwin && test $SHELL = xterm-kitty
        set macos_theme (defaults read -g AppleInterfaceStyle | awk '{print tolower($0)}')
        set-theme-permanent $macos_theme
    end
end
