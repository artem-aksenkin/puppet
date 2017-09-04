class zabbix::server {

  $apache_configfile_path = '/etc/httpd/conf.d/vhost.conf'
  $documentroot = '/usr/share/zabbix/'

  package { "zabbix-server-mysql":
    ensure  => present,
    require => Class['zabbix::repo'],
  }

  $vhost_hash = {
    'document_root' => $documentroot,
  }
  file { $apache_configfile_path:
    content => epp('zabbix/vhost.conf.epp', $vhost_hash),
    require => Package["zabbix-server-mysql"],
  }
  service { zabbix-server:
    ensure     => running,
    enable     => true,
    require    => Package["zabbix-server-mysql"],
    subscribe  => File[$apache_configfile_pathvhost],
  }
}