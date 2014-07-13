## setup-server-hp - HP Proliant setup script.

### Summary

HP Proliant setup script includes:
* add "HP official yum repository" into your machine. 
* add munin hardware monitoring plugin for HP Proliant Server

### Usage

````
wget https://raw.github.com/y-ken/setup-server-hp/master/setup_server_hp.sh
sh setup_server_hp.sh
````

### What is HP official yum repository?

It is available for many distributions to use HP official repositories. <br>
http://downloads.linux.hp.com/SDR/downloads/servicepackforproliant/

Also available for CentOS-6.x 64bit version.<br>
http://downloads.linux.hp.com/SDR/downloads/servicepackforproliant/RedHat/6/x86_64/current/

Currently, on July 2014, you can install these packages with yum command.

````
$ yum list available --disablerepo=* --enablerepo=HP-Proliant
Available Packages
HP-CNA-FC-Emulex-Enablement-Kit.noarch 2.0.0.0-24                    HP-Proliant
HP-CNA-FC-Emulex-Enablement-Kit.x86_64 6.4.21.2-1.rhel6              HP-Proliant
HP-CNA-FC-hpqlgc-Enablement-Kit.noarch 2.0.0.0-4                     HP-Proliant
HP-FC-Brocade-Enablement-Kit.x86_64    4.0.0.0-0                     HP-Proliant
cpqacuxe.i386                          9.20-9.0                      HP-Proliant
cpqacuxe.x86_64                        9.40-12.0                     HP-Proliant
fibreutils.x86_64                      3.2-6                         HP-Proliant
hp-ams.x86_64                          1.5.0-1166.39.rhel6           HP-Proliant
hp-cnu.x86_64                          1.0.13-1                      HP-Proliant
hp-fc-enablement.noarch                1.2-15                        HP-Proliant
hp-health.x86_64                       9.50-1628.32.rhel6            HP-Proliant
hp-nx_nic-docs.noarch                  1.0.0-1                       HP-Proliant
hp-nx_nic-tools.noarch                 4.0.593-1                     HP-Proliant
hp-ocsbbd.x86_64                       1.1.43.0-1                    HP-Proliant
hp-qlgc-docs.noarch                    1.0.1-1                       HP-Proliant
hp-qlgc-utils.noarch                   1.0.2-1                       HP-Proliant
hp-smh-templates.noarch                9.5.0-1358.30                 HP-Proliant
hp-snmp-agents.x86_64                  9.50-2564.40.rhel6            HP-Proliant
hp-tg3sd.x86_64                        1.0.12-1                      HP-Proliant
hpacucli.i386                          9.20-9.0                      HP-Proliant
hpacucli.x86_64                        9.40-12.0                     HP-Proliant
hpdiags.x86_64                         9.64.1262-1202                HP-Proliant
hponcfg.noarch                         4.1.0-0                       HP-Proliant
hponcfg.x86_64                         4.3.0-0                       HP-Proliant
hpsmh.x86_64                           7.3.3-1                       HP-Proliant
hpssa.x86_64                           1.60-17.0                     HP-Proliant
hpssacli.x86_64                        1.60-17.0                     HP-Proliant
hpvca.i386                             7.2.0-0                       HP-Proliant
iscsiuio.x86_64                        0.7.8.1e-1.rhel6u5            HP-Proliant
kmod-be2iscsi.x86_64                   4.9.311.4-1.rhel6u5           HP-Proliant
kmod-be2net.x86_64                     4.9.311.1-1.rhel6u5           HP-Proliant
kmod-bfa.x86_64                        3.2.1.0-0.rhel6u4             HP-Proliant
kmod-cciss.x86_64                      4.6.28-24.rhel6u5             HP-Proliant
kmod-elx-lpfc.x86_64                   8.3.7.39-1.rhel6u5            HP-Proliant
kmod-hp-e1000e.x86_64                  2.5.7-4.rhel6u5               HP-Proliant
kmod-hp-igb.x86_64                     5.0.7-4.rhel6u5               HP-Proliant
kmod-hp-ixgbe.x86_64                   3.19.0.46-4.rhel6u5           HP-Proliant
kmod-hp-ixgbevf.x86_64                 2.12.0.38-4.rhel6u5           HP-Proliant
kmod-hpahcisr.x86_64                   1.2.6-17.rhel6u5              HP-Proliant
kmod-hpqlgc-nx_nic.x86_64              4.0.593-1.rhel6u5             HP-Proliant
kmod-hpqlgc-qla2xxx.x86_64             8.04.00.12.06.0_k4-4.rhel6u4  HP-Proliant
kmod-hpqlgc-qla4xxx.x86_64             5.03.01.11.00.00_k0-4.rhel6u4 HP-Proliant
kmod-hpqlgc-qlcnic.x86_64              5.0.29.5-3.rhel6u4            HP-Proliant
kmod-hpsa.x86_64                       3.4.4-125.rhel6u5             HP-Proliant
kmod-hpvsa.x86_64                      1.2.8-160.rhel6u5             HP-Proliant
kmod-mellanox-mlnx-en.x86_64           2.1-0.0.4.0.gf096076.rhel6u5  HP-Proliant
kmod-mpt2sas.x86_64                    15.10.02.00_rhel6.5-7         HP-Proliant
kmod-netxtreme2.x86_64                 7.10.12-2.rhel6u5             HP-Proliant
kmod-tg3.x86_64                        3.134f-2.rhel6u5              HP-Proliant
````
