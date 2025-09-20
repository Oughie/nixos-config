{
  nix = {
    gc = {
      automatic = true;
      dates = "monthly";
      options = "--delete-older-than +10d";
    };

    optimise = {
      automatic = true;
      dates = [ "weekly" ];
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
