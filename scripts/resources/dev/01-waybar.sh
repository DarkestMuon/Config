printf "${NOTE} Installing waybar...\n"
sudo nala install libgtkmm-3.0-dev
cd ~/.apps/HyprSrc
if git clone  https://github.com/Alexays/waybar.git; then
    cd waybar || exit 1
      meson build
      ninja -C build
      ninja -C build install
    if ninja -C build install 2>&1  ; then
        printf "${OK} waybar installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for waybar." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for waybar." 2>&1
fi

