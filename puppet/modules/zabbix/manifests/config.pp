class zabbix::config {

 #  user { "${apache2::userName}":
 #   ensure      => present,
  #  home        => "/home/$apache2::userName",
   # managehome  => true,
    #shell       => "/bin/bash",
   # comment     => "Some User Account",
   
  #}
  
#file { "${zabbix::configDir}":
#    ensure  => directory,
 #   owner   => $zabbix::userName,
 #   group   => $zabbix::groupName,
 #   mode    => 644,
 #### before  => File[$zabbix::configFile]

  file {"/var/lib/zabbix/.ssh/":
    ensure  => directory,
    owner   => zabbix,
    group   => zabbix,
    mode    => 700,
    require => Package[$zabbix::packages],
  }
  file {"/var/lib/zabbix/config.xml":
    ensure  => present,
    owner   => zabbix,
    group   => zabbix,
    mode    => 644,
    source  => "puppet:///modules/zabbix/var/lib/zabbix/config.xml",
    require => Package[$zabbix::packages],
  }
  
  

  user { "zabbix":
    ensure      => present,
    home        => "/home/zabbix",
    managehome  => true,
    shell       => "/bin/bash",
    comment     => "zabbix User Account",
  }

  

  file { "/var/lib/zabbix/.ssh/id_rsa":
    ensure  => present,
    owner   => zabbix,
    group   => zabbix,
    mode    => 664,
    source  => "puppet:///modules/zabbix/var/lib/zabbix/.ssh/id_rsa",
  }

  file { "/home/zabbixlave/.ssh/id_rsa":
    ensure  => present,
    owner   => zabbix,
    group   => zabbix,
    mode    => 664,
    source  => "puppet:///modules/zabbix/home/zabbixlave/.ssh/id_rsa",
    require => User["zabbixlave"],
  }

  file { "/etc/sysconfig/iptables":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => 600,
    source  => "puppet:///modules/zabbix/etc/iptables",
 #   require => Package["$zabbix::packages]"]
  }
 
 
}