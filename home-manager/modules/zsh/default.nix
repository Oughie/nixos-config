{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    history.size = 1000000;
    shellAliases = {
      clear = "printf '\\033[2J\\033[3J\\033[1;1H'";
      cat = "bat";
    };
    initExtra = ''
      [[ ! -f ${./p10k.zsh} ]] || source ${./p10k.zsh}
      eval "$(zoxide init --cmd cd zsh)"
      export PATH="$HOME/.cargo/bin:$PATH"
      fastfetch
    '';

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
      ];
    };
  };
}
