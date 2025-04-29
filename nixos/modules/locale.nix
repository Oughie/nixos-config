{
  console.keyMap = "de-latin1-nodeadkeys";
  time.timeZone = "Europe/Berlin";

  i18n =
    let
      locale = "de_DE.UTF-8";
    in
    {
      defaultLocale = "en_US.UTF-8";

      extraLocaleSettings = {
        LC_ADDRESS = locale;
        LC_IDENTIFICATION = locale;
        LC_MEASUREMENT = locale;
        LC_MONETARY = locale;
        LC_NAME = locale;
        LC_NUMERIC = locale;
        LC_PAPER = locale;
        LC_TELEPHONE = locale;
        LC_TIME = locale;
      };
    };
}
