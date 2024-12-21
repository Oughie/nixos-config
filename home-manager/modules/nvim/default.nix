{
  programs.neovim = {
    enable = true;
    extraLuaConfig = ''
      dofile('/home/luma/Configuration/home-manager/modules/nvim/init.lua')
    '';
  };
}
