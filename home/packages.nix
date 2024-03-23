{ pkgs, ... }:

{
  home.packages = (with pkgs; [
    unzip
    fish
    fzf
    todo
    ripgrep
    starship
    cargo

    gcc
    gnumake
    python3
    lua
    nodePackages.npm
    clang-tools
    cmake
    gdb

    #nvim
    stylua
    lua-language-server

    obs-studio
    spotify
    yazi
    telegram-desktop
    vesktop
    ffmpeg
    imv # image viewer
    libnotify
    man-pages # extra man pages
    mpv # video player
    ncdu # disk space
    wget
  ]);
}
