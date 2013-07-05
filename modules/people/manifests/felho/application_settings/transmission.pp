class people::felho::application_settings::transmission {
  file {"/Users/${::luser}/Library/Application Support/Transmission":
     ensure  => 'link',
     target  => "/Users/${::luser}/Dropbox/appconfig/Transmission/",
     force   => true,
     require => [Package[Dropbox],Package[transmission]],
  }  
}