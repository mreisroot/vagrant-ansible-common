# Aplicação de configuração em máquina virtual usando o Ansible

## Introdução

Neste projeto, há a criação de uma máquina virtual (VM) com o Vagrant, que será provisionada duas vezes: a primeira vez pelo Shell e a segunda pelo Ansible.

O primeiro provisionamento ocorrerá após a leitura da linha

`config.vm.provision "shell", path: "setup.sh"`

O primeiro provisionamento realizará as seguintes tarefas:

* Adicionar o repositório oficial do Ansible através de um PPA
* Instalar o Ansible

O primeiro provisionamento trata-se de um preparo para o próiximo provisionamento.

O Segundo provisionamento ocorrerá após a leitura do bloco

```
config.vm.provision "ansible_local" do |ansible|
  ansible.provisioning_path = "/ansible"
  ansible.playbook = "playbook.yml"
end
```

O provisionamento feito pelo Ansible realizará a role common, que contém as seguintes tarefas:

* Atualizar o cache do apt
* Instalar os pacotes vim, curl, telnet, unzip, wget, net-tools, htop e nmap
* Definir o nome da máquina

## Como usar este projeto

Para criar a VM Vagrant, execute:

`vagrant up`

Para acessar a VM, execute:

`vagrant ssh`

Para destruir a VM, execute:

`vagrant destroy -f`
