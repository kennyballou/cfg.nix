{ config, pkgs, ... }:
{
  # System packages
  environment.systemPackages = with pkgs; [
     #texFull
     ag
     apg
     aria2
     aspell
     aspellDicts.en
     awscli
     autogen
     bash-completion
     bashInteractive
     bazaar
     cacert
     chromium
     clamav
     clementine
     cppOverlay
     cryptsetup
     dejavu_fonts
     diffstat
     diffutils
     ditaa
     dnsutils
     dos2unix
     dot2tex
     doxygen
     emacsOverlay
     enchant
     entr
     exiv2
     fd
     ffmpeg
     file
     findutils
     firefox
     fontconfig
     freecad
     fzf
     gawk
     gimp
     gitOverlay
     global
     gnugrep
     gnumake
     gnupg
     gnuplot
     gnused
     gnutar
     gnutls
     goOverlay
     graphviz-nox
     groff
     hammer
     haveged
     highlight
     htmlTidy
     htop
     httperf
     idutils
     imagemagick
     imgcat
     inkscape.out
     iotop
     iperf
     isync
     jq
     jsOverlay
     kdeApplications.gwenview
     kdeApplications.kcachegrind
     kdeApplications.okular
     ledger
     less
     libreoffice
     librsvg
     lsof
     ltrace
     m4
     mercurial
     mitmproxy
     mkpasswd
     msmtp
     mtr
     mu
     ncdu
     nfs-utils
     nixOverlay
     nmap
     octave
     openssh
     openssl
     openvpn
     p7zip
     pandoc
     paperkey
     parallel
     pass
     patch
     patchutils
     pdftk
     plantuml
     poppler_utils
     pstree
     pv
     pwgen
     pythonOverlay
     qrencode
     remind
     renameutils
     ripgrep
     rsync
     rtags
     rustOverlay
     screen
     shellcheck
     silver-searcher
     smartmontools
     socat
     sourceHighlight
     stow
     strace
     subversion
     svg2tikz
     tcpdump
     time
     tmux
     tree
     unzip
     urlwatch
     vim
     vlc
     virtualizationOverlay
     w3m
     watch
     watchman
     wavemon
     wget
     whois
     wireshark-qt
     wordnet
     wyrd
     xsv
     xz
     yubikey-personalization
     zip
     zsh
     zsh-syntax-highlighting
  ];
}
