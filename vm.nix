{ pkgs, ... }:

{
	programs.virt-manager.enable = true;
	# IMPORTANT: change $user to your username
	users.groups.libvirtd.members = ["$user"];


	virtualisation.libvirtd = {
		enable = true;
    qemu = {
      package = pkgs.qemu_kvm; # only emulates host arch, smaller download
      runAsRoot = true;
      swtpm.enable = true;
      ovmf = {
        enable = true;
        packages = [
          (pkgs.OVMF.override {
             secureBoot = true;
             tpmSupport = true;
          }).fd
        ];
      };
		};
  };
}
