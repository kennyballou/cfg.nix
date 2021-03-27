{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ag
    apg
    aria2
    aspell
    bash-completion
    bashInteractive
    cacert
    clamav
    cryptsetup
    diffstat
    diffutils
    dnsutils
    dos2unix
    dot2tex
    duplicity
    entr
    exiv2
    fd
    ffmpeg
    file
    findutils
    fontconfig
    fzf
    gawk
    git
    gnugrep
    gnupg
    gnused
    gnutar
    gnutls
    gptfdisk
    groff
    htop
    httperf
    iotop
    iperf
    jq
    less
    linux-overlay
    lsof
    ltrace
    #mitmproxy
    mkpasswd
    mtr
    ncdu
    nfs-utils
    nixOverlay
    nmap
    openssh
    openssl
    openvpn
    parallel
    patch
    patchutils
    pciutils
    pstree
    pv
    pwgen
    rclone
    renameutils
    ripgrep
    rsync
    screen
    silver-searcher
    smartmontools
    socat
    stow
    strace
    tcpdump
    time
    tmux
    tree
    unzip
    vim
    w3m
    watch
    watchman
    wavemon
    wget
    whois
    wireguard
    wordnet
    xsv
    xz
    yubikey-personalization
    zip
    zsh
    zsh-syntax-highlighting
  ];
}
