Vagrant::Config.run do |config|
  config.vm.box = "base"
  config.vm.network "33.33.33.44"
  config.ssh.forward_agent = true
  #config.vm.boot_mode = :gui

  # config.vm.provision :puppet do |puppet|
  #   puppet.manifests_path = "manifests"
  #   puppet.manifest_file  = "base.pp"
  # end
end
