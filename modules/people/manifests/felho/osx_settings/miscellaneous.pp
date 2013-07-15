class people::felho::osx_settings::miscellaneous {
  # Please note that this feature was removed in Lion
  boxen::osx_defaults { 'Show remaining battery percentage':
    user   => $::luser,
    domain => 'com.apple.menuextra.battery',
    key    => 'ShowPercent',
    type   => 'string',
    value  => 'YES',
  }

  boxen::osx_defaults { 'Expand save panel by default':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'NSNavPanelExpandedStateForSaveMode',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Expand print panel by default':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'PMPrintingExpandedStateForPrint',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Disable auto-correct':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'NSAutomaticSpellingCorrectionEnabled',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Save screenshots to the desktop':
    user   => $::luser,
    domain => 'com.apple.screencapture',
    key    => 'location',
    type   => 'string',
    value  => '~/Desktop',
  }

  # other options: bmp, gif, jpg, pdf, tiff
  boxen::osx_defaults { 'Save screenshots in PNG format':
    user   => $::luser,
    domain => 'com.apple.screencapture',
    key    => 'type',
    type   => 'string',
    value  => 'png',
  }

  boxen::osx_defaults { 'Menu bar: disable transparency':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'AppleEnableMenuBarTransparency',
    type   => 'bool',
    value  => false,
  }

  # TODO: this should be tested
  people::felho::plistbuddy { 'Automatically quit printer app once the print jobs complete':
    domain   => 'com.apple.print.PrintingPrefs',
    property => 'Quit When Finished',
    type     => 'bool',
    value    => true,
  }

  boxen::osx_defaults { 'Check for software updates daily, not just once per week':
    user   => $::luser,
    domain => 'com.apple.SoftwareUpdate',
    key    => 'ScheduleFrequency',
    type   => 'int',
    value  => 1,
  }

  boxen::osx_defaults { 'Set clock format':
    user   => $::luser,
    domain => 'com.apple.menuextra.clock',
    key    => 'DateFormat',
    type   => 'string',
    value  => 'EEE d h:mm:ss a',
  }

  boxen::osx_defaults { 'Enable Dashboard dev mode (allows keeping widgets on the desktop)':
    user   => $::luser,
    domain => 'com.apple.dashboard',
    key    => 'devmode',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Enable the debug menu in Disk Utility':
    user   => $::luser,
    domain => 'com.apple.DiskUtility',
    key    => 'DUDebugMenuEnabled',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Enable hidden disk image formats in Disk Utility':
    user   => $::luser,
    domain => 'com.apple.DiskUtility',
    key    => 'advanced-image-options',
    type   => 'bool',
    value  => true,
  }
}