#!/bin/bash

# setup repository
wget https://raw.github.com/y-ken/setup-server-hp/master/yum.repos.d/hp.repo -P /etc/yum.repos.d/
yum -y install hpacucli hp-health

# check RAID status
hpacucli ctrl all show config

# check power supply status
hplog -p

# check fan speed status
hplog -f

# check temperature  status
hplog -t

while true; do
    read -p "Do you continue to setup munin hardware monitoring plugins for hp? (y/n): " yn
    case $yn in
        [Yy]* ) echo "executing munin setup..."; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

if [ `rpm -qa|grep -c munin-node` -eq 0 ]; then
  echo "Setup Aborted: Could not setup munin plugins due to munin-node is not installed."
fi

# setup munin plguins
wget https://raw.github.com/y-ken/setup-server-hp/master/munin-plugins/hpacu -P /usr/share/munin/plugins/
wget https://raw.github.com/y-ken/setup-server-hp/master/munin-plugins/hpfan -P /usr/share/munin/plugins/
wget https://raw.github.com/y-ken/setup-server-hp/master/munin-plugins/hppower -P /usr/share/munin/plugins/
wget https://raw.github.com/y-ken/setup-server-hp/master/munin-plugins/hptemp -P /usr/share/munin/plugins/
chmod +x /usr/share/munin/plugins/{hpacu,hpfan,hppower,hptemp}
ln -s /usr/share/munin/plugins/hpacu /etc/munin/plugins/hpacu
ln -s /usr/share/munin/plugins/hpfan /etc/munin/plugins/hpfan
ln -s /usr/share/munin/plugins/hppower /etc/munin/plugins/hppower
ln -s /usr/share/munin/plugins/hptemp /etc/munin/plugins/hptemp
echo "[hp*]
user root
" >> /etc/munin/plugin-conf.d/munin-node
/etc/init.d/munin-node restart