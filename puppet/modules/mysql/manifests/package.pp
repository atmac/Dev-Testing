class mysql::package () {

  
  package { $mysql::packages:
    ensure => "installed",
    #requires => File ["/etc/my.cnf"],
    provider  => yum,
}


}
