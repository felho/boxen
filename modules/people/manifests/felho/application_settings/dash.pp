class people::felho::application_settings::dash {
  file { "/Users/${::luser}/Library/Application Support/Dash/library.dash":
    ensure  => 'link',
    target  => "/Users/${::luser}/Dropbox/appconfig/Dash/library.dash",
    force   => true,
    require => Package['Dropbox'],
  }
}