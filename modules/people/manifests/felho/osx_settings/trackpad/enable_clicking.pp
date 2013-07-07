class people::felho::osx_settings::trackpad::enable_clicking($enabled = true) {
  boxen::osx_defaults { 'Enable tap to click on a Magic Trackpad':
    user   => $::luser,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Clicking',
    type   => 'bool',
    value  => $enabled,
  }

  boxen::osx_defaults { 'Enable tap to click for the active user':
    user   => $::luser,
    host   => 'currentHost',
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    type   => 'int',
    value  => bool2num($enabled),
  }

  boxen::osx_defaults { 'Enable tap to click on the login screen':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    type   => 'int',
    value  => bool2num($enabled),
  }
}