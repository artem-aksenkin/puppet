node 'host-agent1.minsk.epam.com' {
  include apache
}
node 'host-agent2.minsk.epam.com' {
  include apache
  include '::mysql::server'
  mysql::db { 'test_mdb':
    user     => 'test_user',
    password => 'admin1234',
    host     => 'localhost',
    grant    => ['SELECT', 'UPDATE'],
  }
}
