{
  programs.firefox = {
    enable = true;
    profiles.luma = {
      settings = {
        "browser.tabs.closeWindowWithLastTab" = false;
        "browser.fullscreen.autohide" = false;
        "browser.translations.neverTranslateLanguages" = "de";
        "browser.aboutConfig.showWarning" = false;
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
        "browser.newtabpage.pinned" = [
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
            label = "NixOS & Nixpkgs";
            url = "https://search.nixos.org/options?";
          }
          {
            label = "Home-Manager Options";
            url = "https://home-manager-options.extranix.com/";
          }
        ];
      };
    };
  };
}
