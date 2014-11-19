exec { "build-mod_jk":
  cwd         => "/root",
  command     => "/usr/bin/wget http://archive.apache.org/dist/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.32-src.tar.gz && /bin/tar xvzf tomcat-connectors-1.2.32-src.tar.gz && cd tomcat-connectors-1.2.32-src && ./configure --with-apxs=/usr/sbin/apxs && make install", 
  creates     => "usr/local/mod_jk",
  logoutput   => on_failure,
  timeout     => 0, 
}