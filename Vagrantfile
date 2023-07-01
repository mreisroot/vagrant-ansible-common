Vagrant.configure("2") do |config|

  # Definir provider e alocar recursos
  config.vm.provider "virtualbox" do |vb|
    vb.name = "vagrant-ansible-common"
    vb.cpus = 1
    vb.memory = 1024
    vb.gui = false
  end

  # Definir SO e rede
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "private_network", ip: "192.168.56.2"

  # Sincronizando a pasta da role do ansible
  config.vm.synced_folder "ansible", "/ansible"

  # Primeiro provisionamento: Instalação do Ansible
  config.vm.provision "shell", path: "setup.sh"

  # Segundo provisionamento: Execução da role do Ansible
  config.vm.provision "ansible_local" do |ansible|
    ansible.provisioning_path = "/ansible"
    ansible.playbook = "playbook.yml"
  end

end
