class haproxy::config {


  
        user { "haproxy":
                ensure      => present,
                home        => "/home/haproxy",
                managehome  => true,
                shell       => "/bin/bash",
                comment     => "haproxy User Account",
              }
  
  
        file {"/etc/haproxy/haproxy.cfg":
                ensure  => present,
                owner   => haproxy,
                group   => haproxy,
                mode    => 644,
                source  => "puppet:///modules/haproxy/etc/haproxy/haproxy.cfg",
                require => Package[$haproxy::packages]
              }
  
                      }