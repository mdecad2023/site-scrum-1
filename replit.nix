{ pkgs }: {
  deps = [
    pkgs.libev
    pkgs.vim
    pkgs.openssh
  ];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.libev
    ];
  };
}