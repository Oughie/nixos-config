{
  programs.firefox = {
    enable = true;
    profiles.luma = {
      bookmarks = [
        {
          name = "NixPkgs Search";
          url = "https://search.nixos.org/packages?";
        }
        {
          name = "Home-Manager Search";
          url = "https://home-manager-options.extranix.com/";
        }
        {
          name = "NixOS Options Search";
          url = "https://search.nixos.org/options?";
        }
      ];
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
            label = "Gmail";
            url = "https://mail.google.com/mail/u/0/#inbox";
          }
          {
            label = "schul.cloud";
            url = "https://app.schul.cloud/#/chats";
          }
          {
            label = "Maps";
            url = "https://www.google.de/maps/preview";
          }
          {
            label = "Stack Overflow";
            url = "https://stackoverflow.com/questions";
          }
          {
            label = "LeetCode";
            url = "https://leetcode.com/problemset/";
          }
        ];
      };
    };
  };
}
