class people::felho::osx_settings::keyboard::disable_press_and_hold {
  boxen::osx_defaults { 'Disable press-and-hold for keys in favor of key repeat':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'ApplePressAndHoldEnabled',
    type   => 'bool',
    value  => false,
  }
}