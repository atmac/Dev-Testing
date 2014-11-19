class mysql::service {

  service { "${mysql::service}":
    name        => $mysql::service,
    enable      => true,
    ensure      => running,
    #require     => Package["$mysql::packages"]
    #require => File ["/etc/my.cnf"],
#   require     => File["${jenkins::configDir}/${jenkins::configFile}"],
 #   subscribe   => File["${jenkins::configDir}/${jenkins::configFile}"],
  }
  
  }
 
 
 