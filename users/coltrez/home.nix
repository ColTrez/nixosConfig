{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "coltrez";
  home.homeDirectory = "/home/coltrez";

  home.packages = with pkgs; [
    git
    gnupg pinentry_qt
  ];

  programs.git = {
    enable = true;
    userName = "Colin Trezise";
    userEmail = "ctrezise@asu.edu";
    signing.key = "94DE54F06A2669E7";
  };

  programs.gpg.enable = true;
  services.gpg-agent = {
    enable = true;
    pinentryFlavor = "qt";
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";
}
