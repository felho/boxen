class people::felho::applications::battery_time {
  package { 'Battery Time 2':
    provider => 'compressed_app',
    source   => 'http://yap.nu/battery-time-remaining/download/Battery%20Time%20Remaining-1.6.3.zip',
    ensure   => present,
  }
}