class people::felho::application_settings::sublime_text_2 {
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  file { "/Users/${::luser}/Library/Application Support/Sublime Text 2/Packages/User/Base File.sublime-settings":
    content => template('people/sublime_text_2-Base File.sublime-settings.erb'),
    force   => true,
    group   => 'staff',
    owner   => $::luser,
    require => Package['SublimeText2'],
  }

  file { "/Users/${::luser}/Library/Application Support/Sublime Text 2/Packages/User/SublimeLinter.sublime-settings":
    content => template('people/sublime_text_2-SublimeLinter.sublime-settings.erb'),
    force   => true,
    group   => 'staff',
    owner   => $::luser,
    require => Package['SublimeText2'],
  }

  sublime_text_2::package { 'Puppet':
    source => 'AndriiGrytsenko/sublime-text-puppet'
  }
  file { "/Users/${::luser}/Library/Application Support/Sublime Text 2/Packages/User/Puppet.sublime-settings":
    content => template('people/sublime_text_2-Puppet.sublime-settings.erb'),
    force   => true,
    group   => 'staff',
    owner   => $::luser,
    require => Package['SublimeText2'],
  }

  sublime_text_2::package { 'BracketHighlighter':
    source => 'facelessuser/BracketHighlighter'
  }

  sublime_text_2::package { 'DocBlock':
    source => 'spadgos/sublime-jsdocs'
  }

  sublime_text_2::package { 'Git':
    source => 'kemayo/sublime-text-2-git'
  }

  sublime_text_2::package { 'SublimeLinter':
    source => 'SublimeLinter/SublimeLinter'
  }

  sublime_text_2::package { 'SublimeAlignment':
    source => 'wbond/sublime_alignment'
  }

  sublime_text_2::package { 'SublimeCodeIntel':
    source => 'SublimeCodeIntel/SublimeCodeIntel'
  }

  sublime_text_2::package { 'Gist':
    source => 'condemil/Gist'
  }

  sublime_text_2::package { 'GotoDocumentation':
    source => 'kemayo/sublime-text-2-goto-documentation'
  }

  sublime_text_2::package { 'SideBarEnhancements':
    source => 'titoBouzout/SideBarEnhancements'
  }

  sublime_text_2::package { 'IndentGuides':
    source => 'SublimeText/IndentGuides'
  }

  sublime_text_2::package { 'SublimeQuickFileCreator':
    source => 'noklesta/SublimeQuickFileCreator'
  }

  sublime_text_2::package { 'SublimePackageControl':
    source => 'wbond/sublime_package_control'
  }

  sublime_text_2::package { 'SodaTheme':
    source => 'buymeasoda/soda-theme'
  }

  sublime_text_2::package { 'SublimeAllAutocomplete':
    source => 'alienhard/SublimeAllAutocomplete'
  }

  sublime_text_2::package { 'TrailingSpaces':
    source => 'SublimeText/TrailingSpaces'
  }

  sublime_text_2::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }

  sublime_text_2::package { 'SyncedSideBar':
    source => 'sobstel/SyncedSideBar'
  }

  sublime_text_2::package { 'Eco':
    source => 'davidjrice/sublime-eco'
  }

  sublime_text_2::package { 'Whitespace':
    source => 'disq/HighlightWhitespaces'
  }

  sublime_text_2::package { 'CodeFormatter':
    source => 'akalongman/sublimetext-codeformatter'
  }
}