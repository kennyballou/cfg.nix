{ config, pkgs, ... }:
{
  # Disable mutable user configuration
  users.mutableUsers = false;
  # Local user accounts
  users.users.kb = {
      isNormalUser = true;
      uid = 1000;
      home = "/home/kb";
      shell = pkgs.zsh;
      extraGroups = [ "users"
                      "docker"
                      "wheel"
                      "networkmanager"
                      "systemd-journal"
                      "wireshark"
      ];
      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6rZDmR0reFPduS6O4yOjX1CGs9uokQz5L+qosAduIEW6gTZEZ/OAa4EGdPb0tvbKhrwTC4znUm+wHqnVA3F25mkh4UUDZsgqzL3sppmGNk8z0XprmwnUCmKT7ioS2H7GmITf7WzCoLYOfaQn0VFDGXBwwEUFJqGkvp6naWwZeIUMemU0GDAyHTv5dxR+7tv9Stdne3ymFf03/J6iOMuiD7Q+mHzhPVJPJZpIazYWyBjlAfqujHbA851xJV/m2GUxR2/Nqw3Jv1Rpym+uxzCKIqyP0o66Vn5NLlrqS6bQU7B5FZizih+UebzXxuRk9F3n1R3TUd+yQeBK/rp/nlYoP openpgp:0x584117FD"
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD2awFe+6vPSRl51fnc9o0jC2Eo88q0qjUaynJSu+ET/ySsuwHlSQCTJbGIjSAL9TXkzdN4fvAc+D6zdF7T91TBjJOJ7BNrqOZeoV8+sYKVJ9vOQxYc8VOrfXSScauZLAjqYazOkYFMc1RI0YcGdZm+27hhFkQR0rTUYy88NpRJ5Eu4obgaSL+tx7Mz5/EytgQXi2nwP4l5+ThgIF5rCqvfOKNYxFhkUrFnhBjA3lYpEdteVpTAJ42KE35l8BUgi+fmEErYnPcPerIe/j26ojs497F/jCEmxsmAcKAY/Elh/Jk/NEozvY1GqwHOHWOcPsozfJM7ByAqd68rI12Ueg0d kb@phenex"
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCkSS0sSkjrJkNpWjLUCW9hJYd0aX8VZDkJyr9o+VFw0xXT4nuVw3KE3e68xJiO4Hb1b55ih3xzOcsUiY6JQ7ilEUyWwzFMeN169/w1WTQ/h0cIyqRk54rYaWC5NnPQ2Gp25NY7D4BCS7+wiwrtq3oh3uAO8Qixg5qatiEr//WmUfXTAWGW82gDP34psOs7gYdexKpDQQO+VPhklWp9E7EGDaLRz72FEQj6zkwOoZ4VVk3jbejOy5f2efbuGv2pzvWM2WMLTZN2kAcgjoAAw5kVvvrdRgJU+45D4su6ZYRcXPKv6wKmoXMGCTkR8NWZnhVnRxXYry+GWNjaH4a5Y9t kb@eligos"
      ];
  };
}
