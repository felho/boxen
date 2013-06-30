class people::felho::application_settings {
  notify {'class people::felho::application_settings declared':}

  # Sublime 2
  file {"/Users/${::luser}/Library/Application Support/Sublime Text 2/Packages/User/Base File.sublime-settings":
    content => template('people/sublime_text_2-Base File.sublime-settings.erb'),
    force   => true,
    group   => 'wheel',
    owner   => $::luser,
    require => Package['SublimeText2'],
  }
  file {"/Users/${::luser}/Library/Application Support/Sublime Text 2/Packages/User/SublimeLinter.sublime-settings":
    content => template('people/sublime_text_2-SublimeLinter.sublime-settings.erb'),
    force   => true,
    group   => 'wheel',
    owner   => $::luser,
    require => Package['SublimeText2'],
  }
}
