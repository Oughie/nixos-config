{
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than +10d";
    };
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
