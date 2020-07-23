# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include superwebapp
class superwebapp {
  file {'/var/www/swa':
    ensure => 'directory',
    owner  => $::apache::user,
    group  => $::apache::group,
  }

  file {'/var/www/swa/index.html':
    content => 'This is my super amazing website',
    owner   => $::apache::user,
    group   => $::apache::group,
  }

  apache::vhost {'superwebapp':
    port    => 8080,
    docroot => '/var/www/swa',
    require => File['/var/www/swa'],
  }
}
