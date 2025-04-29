{
  programs.firefox = {
    enable = true;

    profiles.luma.settings."browser." = {
      "tabs.closeWindowWithLastTab" = false;
      "fullscreen.autohide" = false;
      "translations.neverTranslateLanguages" = "de";
      "aboutConfig.showWarning" = false;
      "browser.uidensity" = 1;
      "newtabpage.activity-stream.showSponsoredTopSites" = false;
      "newtabpage.pinned" = [
        {
          label = "GitHub";
          url = "https://github.com/";
        }
        {
          label = "ChatGPT";
          url = "https://chatgpt.com/";
        }
        {
          label = "WhatsApp";
          url = "https://web.whatsapp.com/";
        }
        {
          label = "Stack Overflow";
          url = "https://stackoverflow.com/questions";
        }
        {
          label = "Gmail";
          url = "https://mail.google.com/mail/u/0/#inbox";
        }
        {
          label = "Maps";
          url = "https://www.google.de/maps/preview";
        }
        {
          label = "Nix";
          url = "https://search.nixos.org/packages?";
        }
        {
          label = "Home";
          url = "https://home-manager-options.extranix.com/";
        }
      ];
    };
  };
}
