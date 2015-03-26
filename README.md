# Azure VM Image using Packer

## Local Testing

* Install VirtualBox
* Install Vagrant
* Clone this repo
* vagrant up

## Image Creation

* Install Packer
* Install packer-azure
* Execute following commnd at the root of repo (Change the variables as per your requirements)
* packer build -var 'sn=sub' -var 'ps=/pathto/ps.publishsettings' -var 'sa=sa' packer/windows_base.json
