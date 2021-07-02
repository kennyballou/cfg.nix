{ pkgs, ... }:
{
  fonts.fonts = with pkgs; [
    carlito
    dejavu_fonts
    ipafont
    kochi-substitute
    liberation_ttf
    material-design-icons
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    source-code-pro
    symbola
    ttf_bitstream_vera
  ];

  fonts.fontconfig.defaultFonts = {
    monospace = [
      "DejaVu Sans Mono"
      "IPAPGothic"
    ];
    sansSerif = [
      "DejaVu Sans"
      "IPAPGothic"
    ];
    serif = [
      "DejaVu Serif"
      "IPAPMincho"
    ];
  };
}
