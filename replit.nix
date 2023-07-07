{ pkgs }: {
	deps = [
        pkgs.sqlite.bin
        pkgs.rubyPackages_2_6.rake
        pkgs.ruby
        pkgs.solargraph
        pkgs.rufo
	];
}