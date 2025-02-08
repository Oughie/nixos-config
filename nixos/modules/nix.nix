{
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than +10d";
    };

    optimise = {
      automatic = true;
      dates = [ "daily" ];
    };

    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };
}
