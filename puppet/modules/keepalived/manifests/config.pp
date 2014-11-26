class keepalived::config {


  
        user { "keepalived":
                ensure      => present,
                home        => "/home/keepalived",
                managehome  => true,
                shell       => "/bin/bash",
                comment     => "keepalived User Account",
              }
  
  
        file {"/etc/keepalived/keepalived.conf":
                ensure  => present,
                owner   => keepalived,
                group   => keepalived,
                mode    => 644,
                source  => "puppet:///modules/keepalived/etc/keepalived/keepalived.conf",
                require => Package[$keepalived::packages]
              }
        
        file {"/etc/sysconfig/iptables":
                ensure  => present,
                owner   => root,
                group   => root,
                mode    => 400,
                source  => "puppet:///modules/keepalived/etc/sysconfig/iptables",
                require => Package[$keepalived::packages]
              }
                      }