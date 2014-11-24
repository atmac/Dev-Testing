class puppet::params {

  $packages	= ['puppet-server']
  $configDir	= '/etc/puppet/'
  $configFile	= 'puppet_server.conf'
  $userName	= 'puppet'
  $groupName	= 'puppet'
  $service	= 'puppet_server'
}
