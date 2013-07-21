class people::felho::application_settings::viscosity {
  boxen::osx_defaults { 'Automatically check for updates':
    user   => $::luser,
    domain => 'com.viscosityvpn.Viscosity',
    key    => 'SUEnableAutomaticChecks',
    type   => 'bool',
    value  => true,
  }
}