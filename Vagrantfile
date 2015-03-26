# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|

    config.vm.box = 'opentable/win-2012r2-datacenter-amd64-nocm'

    config.vm.guest = :windows

    config.vm.communicator = "winrm"

    config.winrm.username = "vagrant"
    
    config.winrm.password = "vagrant"

    config.vm.network "forwarded_port", host: 3380, guest: 3389

    config.vm.provider "virtualbox" do |v|
        v.cpus = 2
        v.memory = 2048
    end

    config.vm.synced_folder ".", "/vagrant", disabled: true

    $script = <<SCRIPT
        iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
        choco -y install puppet -installArgs 'PUPPET_AGENT_STARTUP_MODE=Manual'
SCRIPT
    
    # Install Puppet:
    config.vm.provision :shell, inline: $script
   
    config.vm.provision :puppet do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.module_path = "puppet/modules"
        puppet.manifest_file = "init.pp"
        puppet.options = "--verbose --debug"
        puppet.temp_dir = "C:/tmp/vagrant-puppet"
    end

end


    