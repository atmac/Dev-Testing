class zabbix (

	$packages	= $zabbix::params::packages,
	$configDir	= $zabbix::params::configDir,
	$configFile	= $zabbix::params::configFile,
	$userName	= $zabbix::params::userName,
	$groupName	= $zabbix::params::groupName,
	$service	= $zabbix::params::service,

) inherits zabbix::params {
  class { 'zabbix::package': } -> class { 'zabbix::config': } -> class { 'zabbix::service': }
  
  }
