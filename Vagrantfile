
Vagrant.configure("2") do |config|
  config.vm.define "puppetserver" do |server|
    server.vm.hostname = "puppetserver"
    server.vm.box = "sbeliakou/centos-7.3-x86_64-minimal"
    server.vm.network "forwarded_port", guest: 80, host: 8080
    server.vm.network "private_network", ip: "192.168.56.100"
    server.vm.synced_folder "./puppet-pkgs", "/tmp/puppet-pkgs"
    server.vm.provider "virtualbox" do |vb|
      vb.name = "puppetserver"
      vb.memory = "6192"
    end

    server.vm.provision "shell", path: "scripts/server.sh"
    # server.vm.provision "shell", path: "scripts/agent.sh"

  end

  config.vm.define "host1" do |host1|
    host1.vm.hostname = "host-agent1"
    host1.vm.synced_folder "./puppet-pkgs", "/tmp/puppet-pkgs"
    host1.vm.box = "sbeliakou/centos-7.3-x86_64-minimal"
    host1.vm.network "private_network", ip: "192.168.56.110"
    host1.vm.provider "virtualbox" do |vb|
      vb.name = "Host1"
      vb.memory = "1024"
    end

    host1.vm.provision "shell", path: "scripts/host1.sh"

  end


  config.vm.define "host2" do |host2|
    host2.vm.synced_folder "./puppet-pkgs", "/tmp/puppet-pkgs"
    host2.vm.hostname = "host-agent2"
    host2.vm.box = "ubuntu/trusty64"
    host2.vm.network "private_network", ip: "192.168.56.111"
    host2.vm.provider "virtualbox" do |vb|
      vb.name = "Host2"
      vb.memory = "1024"
    end

    host2.vm.provision "shell", path: "scripts/host2.sh"

  end
#
#  config.vm.define "host3" do |host3|
#    host3.vm.synced_folder "./puppet-pkgs", "/tmp/puppet-pkgs"
#    host3.vm.hostname = "host-agent3"
#    host3.vm.box = "sbeliakou/centos-7.3-x86_64-minimal"
#    host3.vm.network "private_network", ip: "192.168.56.112"
#    host3.vm.provider "virtualbox" do |vb|
#      vb.name = "Host3"
#      vb.memory = "1024"
#    end
#
#    host3.vm.provision "shell", path: "scripts/host3.sh"
#
#  end


end