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
     autogen
     bash-completion
     bashInteractive
     bazaar
     cacert
     chromium
     clamav
     clementine
     cryptsetup
     dejavu_fonts
     diffstat
     diffutils
     ditaa
     dnsutils
     docker
     docker-compose
     dot2tex
     doxygen
     emacs
     enchant
     entr
     exiv2
     fd
     ffmpeg
     findutils
     firefox
     fontconfig
     fzf
     gawk
     gdb
     gimp
     git
     gitAndTools.git-crypt
     gitAndTools.gitFastExport
     gitAndTools.pass-git-helper
     gitAndTools.tig
     gitstats
     global
     gnugrep
     gnumake
     gnupg
     gnuplot
     gnused
     gnutar
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
     kdeApplications.kcachegrind
     ledger
     less
     libreoffice
     librsvg
     ltrace
     m4
     mercurial
     mitmproxy
     mkpasswd
     msmtp
     mtr
     ncdu
     nfs-utils
     nix-bash-completions
     nix-diff
     nix-zsh-completions
     nmap
     nodePackages.csslint
     nodePackages.eslint
     nodePackages.js-beautify
     nodejs
     octave
     openjdk8
     openssh
     openssl
     openvpn
     p7zip
     pandoc
     paperkey
     parallel
     patch
     patchutils
     plantuml
     poppler_utils
     pstree
     pv
     python27
     python27Packages.certifi
     python27Packages.pygments
     python27Packages.setuptools
     python3
     python37Packages.gprof2dot
     python37Packages.ipdb
     python37Packages.ipython
     python37Packages.setuptools
     pythonDocs.html.python27
     pythonDocs.pdf_letter.python27
     qemu
     qrencode
     remind
     renameutils
     ripgrep
     rsync
     rtags
     screen
     smartmontools
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
     valgrind
     vim
     vlc
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
