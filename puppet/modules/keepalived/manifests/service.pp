class keepalived::service {

  service { "${keepalived::service}":
    name        => $keepalived::service,
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart  => true,
    require     => File["/etc/keepalived/keepalived.conf"],
 #   subscribe   => File["${jenkins::configDir}/${jenkins::configFile}"],
  }
  
  service { "iptables":
    ensure      => "running",
    enable      => "true",
    subscribe   => File["/etc/sysconfig/iptables"]
    }
  }
  

