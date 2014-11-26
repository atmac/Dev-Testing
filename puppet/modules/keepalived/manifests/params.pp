class keepalived::params {

  $packages	= ['keepalived']
  $configDir	= '/etc/keepalived/'
  $configFile	= 'keepalived.conf'
  $userName	= 'keepalived'
  $groupName	= 'keepalived'
  $service	= 'keepalived'
}
