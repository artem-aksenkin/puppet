class profile::server::server {
  include zabbix::repo
  include zabbix::server
  include zabbix::agent
}