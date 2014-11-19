#node ks00{	
#class { 'mysql': }
#class { 'apache2': }
#class { 'jenkins': }

#}



node 'ks01' {
    class { 'apache2': }
    class { 'jenkins': }
#include jenkins::package

}