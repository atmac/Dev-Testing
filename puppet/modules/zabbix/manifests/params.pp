class zabbix::params {

  $packages	= ['zabbix','zabbix-web','zabbix-proxy']
  $configDir	= '/etc/zabbix/'
  $configFile	= 'zabbix_server.conf'
  $userName	= 'zabbix'
  $groupName	= 'zabbix'
  $service	= 'zabbix_server'
}
