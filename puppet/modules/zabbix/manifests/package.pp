class zabbix::package () {

 
 exec { "create_zabbix_repo":
    command => "rpm -ivh http://repo.zabbix.com/zabbix/2.2/rhel/6/x86_64/zabbix-release-2.2-1.el6.noarch.rpm",
    path    => "/bin/",
   # creates => "/etc/yum.repos.d/jenkins.repo"
  }
 
# exec { "restart_iptables":
 #   command => "service iptables restart",
  #  path    => "/usr/local/bin/:/bin/:/usr/bin/", 
 # }
 
 
  package { $zabbix::packages:
    ensure => "installed",
    provider  => yum,
    require => Exec["create_zabbix_repo"],
}



 
 

}
