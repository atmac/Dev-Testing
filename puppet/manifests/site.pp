node ha01{	
class { 'haproxy': }
class { 'keepalived': }

}

node ha02{  
class { 'haproxy': }
class { 'keepalived': }

}

#node 'ks01' {
 #   class { 'apache2': }
 #   class { 'jenkins': }
#include jenkins::package

#}

#node 'ks02' {
#    class { 'mysql': }
 #   class { 'zabbix': }
    

#}

