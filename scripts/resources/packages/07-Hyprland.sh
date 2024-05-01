printf "${NOTE} Installing Hyprland...\n"
if git clone https://github.com/hyprwm/Hyprland.git; then
    cd Hyprland || exit 1
      make all && sudo make install
    if sudo make install  2>&1  ; then
        printf "${OK} Hyprland installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for Hyprland." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for Hyprland." 2>&1
fi

