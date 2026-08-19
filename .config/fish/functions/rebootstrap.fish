function rebootstrap --description "Re-bootstrap development environment after SteamOS update"
    test (sudo steamos-devmode status) = "enabled"; \
        or sudo steamos-devmode enable --no-prompt; \
            or return $status

    sudo pacman -S --needed --noconfirm yadm; or return $status
    yadm bootstrap
end
