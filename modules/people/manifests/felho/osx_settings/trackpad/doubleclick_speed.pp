class people::felho::osx_settings::trackpad::doubleclick_speed($speed = 1.1) {
  boxen::osx_defaults { 'Set the double-click speed of trackpad':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.doubleClickThreshold',
    type   => 'float',
    value  => $speed,
  }
}