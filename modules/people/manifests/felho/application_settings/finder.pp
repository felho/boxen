class people::felho::application_settings::finder {
  boxen::osx_defaults { 'Disable the warning when changing a file extension':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'FXEnableExtensionChangeWarning',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'Avoid creating .DS_Store files on network volumes':
    user   => $::luser,
    domain => 'com.apple.desktopservices',
    key    => 'DSDontWriteNetworkStores',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Enable text selection in Quick Look Windows':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'QLEnableTextSelection',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Finder: show status bar':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'ShowStatusBar',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Finder: show path bar':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'ShowPathbar',
    type   => 'bool',
    value  => true,
  }

  # Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
  boxen::osx_defaults { 'Use list view in all Finder windows by default':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'FXPreferredViewStyle',
    type   => 'string',
    value  => 'Nlsv',
  }

  boxen::osx_defaults { 'Show all filename extensions in Finder':
    user   => $::luser,
    domain => 'NSGlobalDomain',
    key    => 'AppleShowAllExtensions',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Display full POSIX path as Finder window title':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => '_FXShowPosixPathInTitle',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Allow quitting via ⌘ + Q; doing so will also hide desktop icons':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'QuitMenuItem',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Don\'t show hidden files by default':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'AppleShowAllFiles',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'When performing a search, search the current folder by default':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'FXDefaultSearchScope',
    type   => 'string',
    value  => 'SCcf',
  }

  $new_window_folder = "/Users/${::luser}/Downloads"
  $new_window_target = new_window_folder ? {
    "/Users/${::luser}" => 'PfHm',
    default             => 'PfLo'
  }

  boxen::osx_defaults { 'Open default on my home folder: NewWindowTargetPath':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'NewWindowTargetPath',
    type   => 'string',
    value  => "file://localhost${new_window_folder}",
  }

  boxen::osx_defaults { 'Open default on my home folder: NewWindowTarget':
    user   => $::luser,
    domain => 'com.apple.finder',
    key    => 'NewWindowTarget',
    type   => 'string',
    value  => $new_window_target,
  }
}