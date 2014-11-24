class puppet::package () {

 
 exec { "create_puppet_repo":
    command => "rpm -ivh https://yum.puppetlabs.com/el/6.5/products/x86_64/puppetlabs-release-6-10.noarch.rpm",
    path    => "/bin/",
  }
 
 
  package { $puppet::packages:
    ensure => "installed",
    provider  => yum,
    require => Exec["create_puppet_repo"],
}



 
 

}
