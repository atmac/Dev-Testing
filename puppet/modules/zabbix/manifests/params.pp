class zabbix::params {

  $packages	= ['zabbix-server-mysql','zabbix-web-mysql']
  $configDir	= '/etc/zabbix/'
  $configFile	= 'zabbix_server.conf'
  $userName	= 'zabbix'
  $groupName	= 'zabbix'
  $service	= 'zabbix_server'
}
