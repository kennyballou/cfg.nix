{ config, pkgs, ... }:
{
  # System packages
  environment.systemPackages = with pkgs; [
     ag
     apg
     aria2
     aspell
     autogen
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
     fonts-overlay
     fontconfig
     fzf
     gawk
     gimp
     gnome-applications
     gnugrep
     gnumake
     gnupg
     gnused
     gnutar
     gnutls
     gptfdisk
     groff
     haveged
     htop
     httperf
     iotop
     iperf
     jq
     less
     linux-overlay
     lsof
     ltrace
     m4
     mitmproxy
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
     shellcheck
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
     virtualizationOverlay
     w3m
     watch
     watchman
     wavemon
     wget
     whois
     wordnet
     xorg.xev
     xsv
     xz
     yubikey-personalization
     zip
     zsh
     zsh-syntax-highlighting
  ];
}
