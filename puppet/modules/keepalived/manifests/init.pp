class keepalived (

	$packages	= $keepalived::params::packages,
	$configDir	= $keepalived::params::configDir,
	$configFile	= $keepalived::params::configFile,
	$userName	= $keepalived::params::userName,
	$groupName	= $keepalived::params::groupName,
	$service	= $keepalived::params::service,

) inherits keepalived::params {
  class { 'keepalived::package': } -> class { 'keepalived::config': } -> class { 'keepalived::service': }
  
  }
