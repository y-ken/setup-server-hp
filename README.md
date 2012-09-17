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
http://downloads.linux.hp.com/SDR/downloads/ProLiantSupportPack/

Also available for CentOS-6.x 64bit version.<br>
http://downloads.linux.hp.com/SDR/downloads/ProLiantSupportPack/RedHat/6/x86_64/current/

Currently, on September 2012, you can install these packages with yum command.

````
$ yum list available --disablerepo=* --enablerepo=HP-Proliant
cpqacuxe.x86_64                     9.10-22.0                        HP-Proliant
fibreutils.x86_64                   3.2-5                            HP-Proliant
hp-ams.x86_64                       1.1.0-604.rhel6                  HP-Proliant
hp-fc-enablement.noarch             1.2-9                            HP-Proliant
hp-health.x86_64                    9.1.0.42-54.rhel6                HP-Proliant
hp-smh-templates.noarch             9.1.0.33-32.all                  HP-Proliant
hp-snmp-agents.x86_64               9.1.0.57-51.rhel6                HP-Proliant
hpacucli.x86_64                     9.10-22.0                        HP-Proliant
hpdiags.x86_64                      9.1.0-301                        HP-Proliant
hponcfg.noarch                      4.0.0-0                          HP-Proliant
hpsmh.x86_64                        7.1.0-16                         HP-Proliant
hpvca.i386                          7.1.0-2                          HP-Proliant
kmod-cciss.x86_64                   4.6.28-20.el6                    HP-Proliant
kmod-hpahcisr.x86_64                1.2.6-13.el6                     HP-Proliant
kmod-hpsa.x86_64                    3.0.0-8.el6                      HP-Proliant
kmod-hpvsa.x86_64                   1.2.2-3.el6                      HP-Proliant
kmod-mpt2sas.x86_64                 10.10.22.00_rhel6.2-1            HP-Proliant
````