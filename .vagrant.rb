Vagrant.configure(2) do |config|
    config.vm.provision "shell", inline: "sudo systemctl restart network.service || true", run: "always"
    config.vm.provision "shell", inline: <<-SHELL
        sudo yum install -y epel-release git vim telnet net-tools rsync
        sudo yum update -y epel-release
        sudo yum install -y ansible
    SHELL
end
