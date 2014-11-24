class puppet::service {

  service { "${puppet::service}":
    name        => $puppet::service,
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart  => true,
#    require     => File["${jenkins::configDir}/${jenkins::configFile}"],
 #   subscribe   => File["${jenkins::configDir}/${jenkins::configFile}"],
  }
  
  #service { "iptables":
    #ensure  => "running",
   # enable  => "true",
  }

