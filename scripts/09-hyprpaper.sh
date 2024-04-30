printf "${NOTE} Installing hyprpaper...\n"
if git clone https://github.com/hyprwm/hyprpaper.git; then
    cd hyprpaper || exit 1
    cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -S . -B ./build
    cmake --build ./build --config Release --target hyprpaper -j`nproc 2>/dev/null || getconf NPROCESSORS_CONF`
    sudo cmake --install build
    if sudo cmake --install ./build 2>&1  ; then
        printf "${OK} hyprpaper installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for hyprpaper." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for hyprpaper." 2>&1
fi

