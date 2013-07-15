class people::felho::osx_settings::dock {
  boxen::osx_defaults { 'Set the icon size of Dock items to 48 pixels':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'tilesize',
    type   => 'int',
    value  => 48,
  }

  boxen::osx_defaults { 'Activating Dock auto-hide':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'autohide',
    type   => 'int',
    value  => 1,
  }

  boxen::osx_defaults { 'Speed up Mission Control animations':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'expose-animation-duration',
    type   => 'float',
    value  => 0.1,
  }

  # Hot corners
  # Possible values:
  #  0: no-op
  #  2: Mission Control
  #  3: Show application windows
  #  4: Desktop
  #  5: Start screen saver
  #  6: Disable screen saver
  #  7: Dashboard
  # 10: Put display to sleep
  # 11: Launchpad
  boxen::osx_defaults { 'Top left screen corner → Application windows':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'wvous-tl-corner',
    type   => 'int',
    value  => 3,
  }
  boxen::osx_defaults { 'Top left screen corner → Modifier':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'wvous-tl-modifier',
    type   => 'int',
    value  => 0,
  }
  boxen::osx_defaults { 'Bottom left screen corner → Desktop':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'wvous-bl-corner',
    type   => 'int',
    value  => 4,
  }
  boxen::osx_defaults { 'Bottom left screen corner → Modifier':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'wvous-bl-modifier',
    type   => 'int',
    value  => 0,
  }
  boxen::osx_defaults { 'Top right screen corner → Mission Control':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'wvous-tr-corner',
    type   => 'int',
    value  => 2,
  }
  boxen::osx_defaults { 'Top right screen corner → Modifier':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'wvous-tr-modifier',
    type   => 'int',
    value  => 0,
  }
  boxen::osx_defaults { 'Bottom right screen corner → Start screen saver':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'wvous-br-corner',
    type   => 'int',
    value  => 5,
  }
  boxen::osx_defaults { 'Bottom right screen corner → Modifier':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'wvous-br-modifier',
    type   => 'int',
    value  => 0,
  }

  boxen::osx_defaults { 'Minimize on double click':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'AppleMiniaturizeOnDoubleClick',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Minimize to application':
    user   => $::luser,
    domain => 'com.apple.dock',
    key    => 'minimize-to-application',
    type   => 'bool',
    value  => true,
  }
}