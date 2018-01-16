# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	1.times do |n|
		config.ssh.insert_key = true
		config.ssh.username = 'vagrant'
		config.ssh.password = 'vagrant'
		config.vm.define "node"+(1+n).to_s do |cc|
    			cc.vm.host_name = "node" + (1+n).to_s
    			cc.vm.network :private_network, ip: "10.10.10.1" + n.to_s
					if cc.vm.hostname == "node1" then
						cc.vm.box = "bento/centos-7.4"
						cc.vm.box_check_update = true
						cc.vm.network "forwarded_port", guest: 3306, host: 3306
						cc.vm.provider :virtualbox do |vb|
								vb.gui = false
								vb.memory = "4096"
								vb.name = "node"+(1+n).to_s
						end
					end
                                        if cc.vm.hostname == "node2" then
                                                 cc.vm.box = "bento/centos-7.4"
                                                 cc.vm.box_check_update = true
                                                 cc.vm.network "forwarded_port", guest: 3306, host: 3307
                                                 cc.vm.provider :virtualbox do |vb|
                                                                vb.gui = false
                                                                vb.memory = "1024"
                                                                vb.name = "node"+(1+n).to_s
                                                end
                                        end
		end
	end
end
