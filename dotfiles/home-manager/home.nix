{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "abhi";
  home.homeDirectory = "/home/abhi";

  # Packages that should be installed to the user profile.
  home.packages = [
    pkgs.htop
    pkgs.bat
    pkgs.eza
    pkgs.neofetch
    pkgs.oh-my-posh
    pkgs.ungoogled-chromium
    pkgs.zoxide
    pkgs.ytfzf
    pkgs.fzf
    pkgs.gcal
    pkgs.zathura
    pkgs.ripgrep
    pkgs.deno
    pkgs.pandoc
    pkgs.texliveFull
    pkgs.gh
    pkgs.fish
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

}
