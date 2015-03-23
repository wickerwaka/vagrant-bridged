# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "hashicorp/precise32"

	config.vm.define "middle" do |c|
		c.vm.hostname = "middle"
		c.vm.box = "hashicorp/precise32"
		c.vm.network "private_network", virtualbox__intnet: "left", auto_config: false
		c.vm.network "private_network", virtualbox__intnet: "right", auto_config: false
		c.vm.provider "virtualbox" do |v|
			v.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
			v.customize ["modifyvm", :id, "--nicpromisc3", "allow-all"]
		end

		c.vm.provision "shell", path: "packages.sh"
		c.vm.provision "shell", path: "bridge-up.sh", run: "always"
	end

	config.vm.define "left" do |c|
		c.vm.hostname = "left"
		c.vm.box = "hashicorp/precise32"
		c.vm.network "private_network", virtualbox__intnet: "left", ip: "192.168.10.10"
	end

	config.vm.define "right" do |c|
		c.vm.hostname = "right"
		c.vm.box = "hashicorp/precise32"
		c.vm.network "private_network", virtualbox__intnet: "right", ip: "192.168.10.30"
	end
		
	config.vm.provision "shell", path: "add-hosts.sh"

end
