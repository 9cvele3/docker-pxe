run:
	docker-compose down --remove-orphans
	docker-compose up

Rocky-x86_64-minimal.iso:
	wget https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-x86_64-minimal.iso

rocky8: Rocky-x86_64-minimal.iso
	7z x -o$@ $<
	chmod -R +rx $@


