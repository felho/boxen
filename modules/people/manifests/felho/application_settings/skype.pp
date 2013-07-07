class people::felho::application_settings::skype {
  file { "/Users/${::luser}/Library/Application Support/Skype":
    ensure  => 'link',
    target  => "/Users/${::luser}/Dropbox/Skype/",
    force   => true,
    require => [ Package['Dropbox'], Package['Skype'] ],
  }
}