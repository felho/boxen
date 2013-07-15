class people::felho::osx_settings::trackpad::tracking_speed($speed = 1.5) {
  boxen::osx_defaults { 'Set the tracking speed of trackpad':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.scaling',
    type   => 'float',
    value  => $speed,
  }
}