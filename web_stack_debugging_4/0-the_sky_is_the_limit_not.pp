# Raises nginx's open files limit to fix failed requests under load
exec { 'fix--for-nginx':
  command  => 'sed -i "s/^ULIMIT=.*/ULIMIT=\"-n 4096\"/" /etc/default/nginx && service nginx restart',
  provider => 'shell',
  path     => ['/bin', '/usr/bin', '/usr/sbin'],
}
