#    ___             ___         _   _
#   | _ ) ___ _ _   | _ \___ _ _| |_(_)_ _  ___
#   | _ \/ -_) ' \  |  _/ -_) '_| / / | ' \(_-<
#   |___/\___|_||_| |_| \___|_| |_\_\_|_||_/__/
#   V1.0 | A default Vagrant configuration with a provision bootstrap.
#

IP_ADDRESS = "192.168.33.22"

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "localhost"
    config.vm.network "private_network", ip: IP_ADDRESS
    config.vm.synced_folder ".", "/var/www/html", id: "vagrant-root",
        owner: "vagrant",
        group: "www-data",
        mount_options: ["dmode=775,fmode=664"]
    config.vm.provision :shell, path: "vagrant/bootstrap.sh"
end
