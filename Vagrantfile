# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.define "trusty64" do |trusty64|
    trusty64.vm.box = "bento/ubuntu-14.04"
    trusty64.vm.provision "ansible" do |ansible|
      ansible.sudo = true
      ansible.playbook = "tests/test.yml"
    end
    trusty64.vm.network "forwarded_port", guest: 8080, host: 8080
    trusty64.vm.network "forwarded_port", guest: 8081, host: 8081
    trusty64.vm.synced_folder ".matchbox", "/etc/matchbox"

    trusty64.vm.provider "virtualbox" do |v|
      v.customize ['modifyvm', :id, '--cableconnected1', 'on']
    end
  end
end

