printf "${NOTE} Installing Wayland...\n"
if git clone https://github.com/hyprwm/Wayland.git; then
    cd Wayland || exit 1
      meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -Ddocumentation=false &&
      ninja
      sudo ninja install
    if sudo cmake --install ./build 2>&1  ; then
        printf "${OK} Wayland installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for Wayland." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for Wayland." 2>&1
fi

