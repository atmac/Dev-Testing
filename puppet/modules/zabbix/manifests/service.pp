class zabbix::service {

  service { "${zabbix::service}":
    name        => $zabbix::service,
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart  => true,
#    require     => File["${jenkins::configDir}/${jenkins::configFile}"],
 #   subscribe   => File["${jenkins::configDir}/${jenkins::configFile}"],
  }
  
  service { "iptables":
    ensure  => "running",
    enable  => "true",
  }
}
