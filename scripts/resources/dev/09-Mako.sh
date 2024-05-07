printf "${NOTE} Installing Mako...\n"
cd ~/.apps/HyprSrc
if git clone --recursive https://github.com/emersion/Mako.git; then
    cd Mako || exit 1
      meson build
      ninja -C build
    if ninja -C build  2>&1  ; then
        printf "${OK} Mako installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for Mako." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for Mako." 2>&1
fi

