class people::felho::application_settings::transmission {
  file { "/Users/${::luser}/Library/Application Support/Transmission":
    ensure  => 'link',
    target  => "/Users/${::luser}/Dropbox/appconfig/Transmission/",
    force   => true,
    require => [ Package['Dropbox'], Package['transmission'] ],
  }

  boxen::osx_defaults { 'Disable total download rate on badge icon':
    user   => $::luser,
    domain => 'org.m0k.transmission',
    key    => 'BadgeDownloadRate',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'Disable total upload rate on badge icon':
    user   => $::luser,
    domain => 'org.m0k.transmission',
    key    => 'BadgeUploadRate',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'Turn off prompt for removal of active transfers':
    user   => $::luser,
    domain => 'org.m0k.transmission',
    key    => 'CheckQuit',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'Turn off prompt for quiting with active transfers':
    user   => $::luser,
    domain => 'org.m0k.transmission',
    key    => 'CheckRemove',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'Trash original torrent files in Transmission':
    user   => $::luser,
    domain => 'org.m0k.transmission',
    key    => 'DeleteOriginalTorrent',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Hide the Transmission donate message':
    user   => $::luser,
    domain => 'org.m0k.transmission',
    key    => 'WarningDonate',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'Hide the legal disclaimer':
    user   => $::luser,
    domain => 'org.m0k.transmission',
    key    => 'WarningLegal',
    type   => 'bool',
    value  => false,
  }
}