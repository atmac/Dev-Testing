class mysql::params {

  $packages	= ['mysql-server']
  $configDir	= '/etc/'
  $configFile	= 'my.cnf'
  $userName	= 'mysql'
  $groupName	= 'mysql'
  $service	= 'mysqld'
  $mysql_password = 'password' 
}
