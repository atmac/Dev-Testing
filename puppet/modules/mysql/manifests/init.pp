class mysql (

	$packages	= $mysql::params::packages,
	$configDir	= $mysql::params::configDir,
	$configFile	= $mysql::params::configFile,
	$userName	= $mysql::params::userName,
	$groupName	= $mysql::params::groupName,
	$service	= $mysql::params::service,
  $mysql_password = $mysql::params::mysql_password,
  
) inherits mysql::params {
  class { 'mysql::package': } -> class { 'mysql::config': } -> class { 'mysql::service': }
  
  }
