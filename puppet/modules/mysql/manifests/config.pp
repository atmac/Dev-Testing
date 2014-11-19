class mysql::config {

  
#file { "${mysql::configDir}":
#    ensure  => directory,
 #   owner   => $mysql::userName,
 #   group   => $mksql::groupName,
 #   mode    => 644,
 #### before  => File[$mysql::configFile]

 
  file {"/etc/my.cnf":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => 644,
    source  => "puppet:///modules/mysql/etc/my.cnf",
    #require => Package[$mysql::packages],
  }
  
  exec { "set-mysql-password":
    unless => "mysqladmin -uroot -p${mysql::mysql_password} status",
    path => ["/bin", "/usr/bin"],
    command => "mysqladmin -uroot password password",
    #require => Service["mysqld"],
  }

 


 #file { "/etc/sysconfig/iptables":
 #   ensure  => present,
 #   owner   => root,
 #   group   => root,
 #  mode    => 600,
 #   source  => "puppet:///modules/jenkins/etc/iptables",
 #   require => Package["$jenkins::packages]"]
  }
 
 
