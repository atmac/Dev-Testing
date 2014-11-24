class puppet::config {

 #  user { "${apache2::userName}":
 #   ensure      => present,
  #  home        => "/home/$apache2::userName",
   # managehome  => true,
    #shell       => "/bin/bash",
   # comment     => "Some User Account",
   
  #}
  
#file { "${puppet::configDir}":
#    ensure  => directory,
 #   owner   => $puppet::userName,
 #   group   => $puppet::groupName,
 #   mode    => 644,
 #### before  => File[$puppet::configFile]

 # file {"/var/lib/puppet/.ssh/":
  #  ensure  => directory,
   # owner   => puppet,
    #group   => puppet,
    #mode    => 700,
    #require => Package[$puppet::packages],
  }
  
  user { "puppet":
    ensure      => present,
    home        => "/var/lib/puppet",
    managehome  => true,
    shell       => "/bin/bash",
    comment     => "puppet User Account",
  }
  
  
  #file {"/etc/puppet/puppet_server.conf":
  #  ensure  => present,
  #  owner   => puppet,
  #  group   => puppet,
  #  mode    => 644,
  #  source  => "puppet:///modules/puppet/files/etc/puppet/puppet_server.conf",
  #  require => Package[$puppet::packages],
 # }
 
  

  #file { "/home/puppetslave/.ssh/id_rsa":
  #  ensure  => present,
  #  owner   => puppet,
  #  group   => puppet,
  #  mode    => 664,
   # source  => "puppet:///modules/puppet/home/puppetlave/.ssh/id_rsa",
   # require => User["puppetslave"],
  

  file { "/etc/sysconfig/iptables":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => 600,
    source  => "puppet:///modules/puppet/etc/iptables",
 #   require => Package["$puppet::packages]"]
  }
 
 
