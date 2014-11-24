class haproxy::service {

  service { "${haproxy::service}":
    name        => $haproxy::service,
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart  => true,
    require     => File["/etc/haproxy/haproxy.cfg"],
 #   subscribe   => File["${jenkins::configDir}/${jenkins::configFile}"],
  }
  
  #service { "iptables":
    #ensure  => "running",
   # enable  => "true",
  }

