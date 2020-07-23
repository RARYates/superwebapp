# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include superwebapp
class superwebapp {
  file {'/var/www/swa':
    ensure => 'directory',
    owner  => 'apache',
    group  => 'apache'
  }

  file {'/var/www/swa/index.html':
    content => 'This is my super amazing website',
    owner   => 'apache',
    group   => 'apache'
  }

  apache::vhost {'superwebapp':
    port    => 8080,
    docroot => '/var/www/swa',
    require => File['/var/www/swa'],
  }
}
