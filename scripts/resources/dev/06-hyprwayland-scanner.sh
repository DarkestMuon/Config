printf "${NOTE} Installing hyprwayland-scanner...\n"
sudo nala install -y libpugixml-dev
cd ~/.apps/HyprSrc
if git clone https://github.com/hyprwm/hyprwayland-scanner.git; then
    cd hyprwayland-scanner || exit 1
    cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
    cmake --build ./build --config Release --target hyprwayland-scanner -j`nproc 2>/dev/null || getconf NPROCESSORS_CONF`
    if sudo cmake --install ./build 2>&1  ; then
        printf "${OK} hyprwayland-scanner installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for hyprwayland-scanner." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for hyprwayland-scanner." 2>&1
fi

