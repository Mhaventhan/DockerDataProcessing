# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  NodeCount = 1
  # To completely disable the log file output
  config.vm.provider "virtualbox" do |vb|
  vb.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
  end

  (1..NodeCount).each do |i|
    config.vm.define "elkvm" do |node|
      node.vm.box = "ubuntu/bionic64"
      node.vm.hostname = "elkvm.example.com"
      node.vm.network "private_network", ip: "172.42.42.200"
      node.vm.synced_folder "Docker", "/home/ubuntu/docker"
      node.vm.synced_folder "Diabetes-Detection-and-Identification-of-Risk-Factors", "/home/ubuntu/Diabetes-Detection-and-Identification-of-Risk-Factors"
      node.vm.provision "shell", path: "docker/docker-provision.sh", privileged: false
      node.vm.provider "virtualbox" do |v|
        v.name = "elkvm"
        v.memory = 2048
        v.cpus = 2
      end
    end
  end
end
