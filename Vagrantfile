Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
    v.cpus = 1
  end
# apache VM
  config.vm.define 'apache' do |apache|
    apache.vm.network :private_network, ip: '192.168.23.34'
# Sync directory and virtual host
    apache.vm.synced_folder './files/', '/home/ubuntu/conf/', mount_options: ['dmode=755','fmode=644']
    apache.vm.provision 'apache', type: 'shell', path: 'files/bootstrap.sh'
  end
end
