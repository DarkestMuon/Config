printf "${NOTE} Installing hyprcursor...\n"
cd ~/.apps/HyprSrc
if git clone --recursive https://github.com/hyprwm/hyprcursor.git; then
    cd hyprcursor || exit 1
    cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build
    cmake --build ./build --config Release --target all -j`nproc 2>/dev/null || getconf NPROCESSORS_CONF`
    if sudo cmake --install ./build 2>&1  ; then
        printf "${OK} hyprcursor installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for hyprcursor." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for hyprcursor." 2>&1
fi

