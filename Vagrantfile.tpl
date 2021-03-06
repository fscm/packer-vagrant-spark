# encoding: utf-8

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version.
VAGRANTFILE_API_VERSION ||= "2"

# Vagrant version.
# version 1.8.0 is required due to issue https://github.com/mitchellh/vagrant/issues/5497
Vagrant.require_version ">= 1.8.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.forward_agent = false
  config.ssh.forward_x11 = false
  config.ssh.keep_alive = true
  config.ssh.username = "pollywog"

  config.vm.box_check_update = true

  config.vm.network "forwarded_port", guest: 4040, host: 4040, protocol: "tcp", auto_correct: true
  config.vm.network "forwarded_port", guest: 6066, host: 6066, protocol: "tcp", auto_correct: true
  config.vm.network "forwarded_port", guest: 7077, host: 7077, protocol: "tcp", auto_correct: true
  config.vm.network "forwarded_port", guest: 8080, host: 8080, protocol: "tcp", auto_correct: true
  config.vm.network "forwarded_port", guest: 8081, host: 8081, protocol: "tcp", auto_correct: true
  config.vm.network "forwarded_port", guest: 8888, host: 8888, protocol: "tcp", auto_correct: true
  config.vm.network "forwarded_port", guest: 18080, host: 18080, protocol: "tcp", auto_correct: true

  config.vm.communicator = "ssh"

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/shared", create: true
end
