class haproxy (

	$packages	= $haproxy::params::packages,
	$configDir	= $haproxy::params::configDir,
	$configFile	= $haproxy::params::configFile,
	$userName	= $haproxy::params::userName,
	$groupName	= $haproxy::params::groupName,
	$service	= $haproxy::params::service,

) inherits haproxy::params {
  class { 'haproxy::package': } -> class { 'haproxy::config': } -> class { 'haproxy::service': }
  
  }
