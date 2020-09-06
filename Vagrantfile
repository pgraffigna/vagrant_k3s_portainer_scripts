Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
 
  config.vm.define "portainer" do |port|
    port.vm.box = "geerlingguy/ubuntu2004"
    port.vm.hostname = "portainer"
    port.vm.network "private_network", ip: "192.168.60.10"
    port.vm.provision "shell", path: "docker.sh"
    port.vm.provision "shell", path: "kubectl.sh"
    port.vm.provision "shell", path: "k3s_install.sh"
    port.vm.provision "shell", path: "k3s_portainer.sh"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.name = "portainer"
    vb.memory = "4096"
    vb.cpus = "2"
  end  
end