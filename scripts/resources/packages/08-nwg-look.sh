printf "${NOTE} Installing nwg-look...\n"
if git clone https://github.com/nwg-piotr/nwg-look.git; then
    cd nwg-look || exit 1
      make build
      sudo make install
    if sudo make install  2>&1  ; then
        printf "${OK} nwg-look installed successfully.\n" 2>&1 
    else
        echo -e "${ERROR} Installation failed for nwg-look." 2>&1 
    fi
    cd ..
else
    echo -e "${ERROR} Download failed for nwg-look." 2>&1
fi

