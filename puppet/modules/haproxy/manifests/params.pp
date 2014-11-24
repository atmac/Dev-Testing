class haproxy::params {

  $packages	= ['haproxy']
  $configDir	= '/etc/haproxy/'
  $configFile	= 'haproxy_server.conf'
  $userName	= 'haproxy'
  $groupName	= 'haproxy'
  $service	= 'haproxy'
}
