class keepalived::package () {




exec { "install_gcc_kernel_head_devel":
    command => "yum install gcc kernel-headers kernel-devel -y",
    path    => "/usr/local/bin/:/bin/:/usr/bin/"
    }
 
  package { $keepalived::packages:
    ensure => "installed",
    provider  => yum,
    require => Exec["install_gcc_kernel_head_devel"],
}



 
 

}
