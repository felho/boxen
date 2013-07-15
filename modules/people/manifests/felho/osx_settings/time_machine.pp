class people::felho::osx_settings::time_machine {
  exec { 'Disable local Time Machine backups':
    command => 'tmutil disablelocal',
    user => 'root',
    require => Sudoers[ 'tmutil' ],
  }

  boxen::osx_defaults { 'Disable new disks requests for Time Machine':
    user   => $::luser,
    domain => 'com.apple.TimeMachine',
    key    => 'DoNotOfferNewDisksForBackup',
    type   => 'bool',
    value  => true,
  }
}