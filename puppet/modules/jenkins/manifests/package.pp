class jenkins::package () {

 
 exec { "create_jenkins_repo":
    command => "wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo;sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key",
    path    => "/usr/local/bin/:/bin/:/usr/bin/",
    creates => "/etc/yum.repos.d/jenkins.repo"
  }
 
# exec { "restart_iptables":
 #   command => "service iptables restart",
  #  path    => "/usr/local/bin/:/bin/:/usr/bin/", 
 # }
 
 
  package { $jenkins::packages:
    ensure => "installed",
    provider  => yum,
    require => Exec["create_jenkins_repo"],
}



 
 

}
