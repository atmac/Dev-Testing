class puppet (

	$packages	= $puppet::params::packages,
	$configDir	= $puppet::params::configDir,
	$configFile	= $puppet::params::configFile,
	$userName	= $puppet::params::userName,
	$groupName	= $puppet::params::groupName,
	$service	= $puppet::params::service,

) inherits puppet::params {
  class { 'puppet::package': } -> class { 'puppet::config': } -> class { 'puppet::service': }
  
  }
