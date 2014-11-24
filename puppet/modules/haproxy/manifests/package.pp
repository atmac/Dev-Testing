class haproxy::package () {


 
  package { $haproxy::packages:
    ensure => "installed",
    provider  => yum,
   # require => Exec["create_haproxy_repo"],
}



 
 

}
