Vagrant.configure("2") do |config|
  config.ssh.forward_agent = true
  config.vm.box       = 'kinteract-0.1'
  config.vm.box_url   = 'https://dl.dropboxusercontent.com/s/6j40xa1b9nrp8ce/kinteract-0.1.box?token_hash=AAFLE3KDoXspIUeBW9EVEgSj2U_Nv8GZ1qPrFX_7jL030w&dl=1' #kinteract-0.1.box
  config.vm.hostname = 'chef-rails-dev-box'

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 5432, host: 15432
  config.vm.network :forwarded_port, guest: 35729, host: 35729
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root", nfs: true

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2000"]

    # Enable shared clipboard
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
  end
end
