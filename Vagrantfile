Vagrant.configure("2") do |config|
  config.vm.box       = 'devbox-2-0-5'
  config.vm.box_url   = '~/Sites/chef-rails-dev-box/builds/devbox-2-0-5.box'

  config.vm.network :forwarded_port, guest: 35729, host: 35729
end
