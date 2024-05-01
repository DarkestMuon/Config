sudo nala install -y 	libpam0g-dev wlogout waybar
printf "${NOTE} Installing hyprlock...\n"
if git clone https://github.com/hyprwm/hyprlock.git; then
    cd hyprlock || exit 1
    cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -S . -B ./build
    cmake --build ./build --config Release --target hyprlock -j`nproc 2>/dev/null || getconf NPROCESSORS_CONF`
    sudo cmake --install build
    if sudo cmake --install ./build 2>&1  ; then
        printf "${OK} hyprlock installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for hyprlock." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for hyprlock." 2>&1
fi

