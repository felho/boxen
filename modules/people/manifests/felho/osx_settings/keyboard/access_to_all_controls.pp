class people::felho::osx_settings::keyboard::access_to_all_controls {
  boxen::osx_defaults { 'Enable full keyboard access for all controls':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'AppleKeyboardUIMode',
    type   => 'int',
    value  => 3,
  }
}