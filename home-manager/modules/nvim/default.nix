{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraLuaConfig = ''
      dofile(os.getenv 'HOME' .. '/Configuration/home-manager/modules/nvim/init.lua')
    '';
  };
}
