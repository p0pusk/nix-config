{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    zip
    unzip
    fzf
    fd
    todo
    ripgrep
    starship
    wget
    zoxide
    tree
    nix-prefetch-git

    hlint
    haskellPackages.stack
    haskell.compiler.ghc947
    haskell.packages.ghc947.haskell-language-server
    gcc
    cargo
    gnumake
    lua
    lldb
    nodejs
    nodePackages.npm
    clang-tools
    cmake
    neovide
    pgadmin4

    latexrun
    pplatex
    texlive.combined.scheme-full

    spoofdpi
    ffmpeg
    man-pages # extra man pages

    (python3.withPackages (python-pkgs:
      with python-pkgs; [
        pip
        opencv4
        jupyterlab
        matplotlib
        virtualenv
        pandas
        numpy
        scikit-learn
        torch
        torchaudio
        librosa
        xgboost
      ]))

    spotify
    revolt-desktop
    yazi

    inputs.nixvim-flake.packages.${pkgs.system}.default
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" "Iosevka" ]; })
  ];

}
