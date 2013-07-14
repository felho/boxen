class people::felho::osx_settings::screensaver {
  # This is not needed as the boxen::security module declares them.
  # boxen::osx_defaults { 'Ask for password after sleep or screen saver begins':
  #   user   => $::luser,
  #   domain => 'com.apple.screensaver',
  #   key    => 'askForPassword',
  #   type   => 'int',
  #   value  => 1,
  # }

  # boxen::osx_defaults { 'Require password 5 seconds after sleep or screen saver begins':
  #   user   => $::luser,
  #   domain => 'com.apple.screensaver',
  #   key    => 'askForPasswordDelay',
  #   type   => 'int',
  #   value  => 5,
  # }

  $plist = "ByHost/com.apple.screensaver.${::sp_platform_uuid}.plist"

  people::felho::plistbuddy { 'Background image: moduleName':
    plist    => $plist,
    property => 'moduleDict:moduleName',
    type     => 'string',
    value    => 'Flurry',
  }
  people::felho::plistbuddy { 'Background image: path':
    plist    => $plist,
    property => 'moduleDict:path',
    type     => 'string',
    value    => '/System/Library/Screen Savers/Flurry.saver',
  }
  people::felho::plistbuddy { 'Background image: type':
    plist    => $plist,
    property => 'moduleDict:type',
    type     => 'int',
    value    => 0,
  }

  people::felho::plistbuddy { 'Start after 5 minutes':
    plist    => $plist,
    property => 'idleTime',
    type     => 'int',
    value    => 300,
  }
}