class people::felho::application_settings::mplayerx {
  boxen::osx_defaults { 'MPlayerX set letterbox mode to "bottom only"':
    user   => $::luser,
    domain => 'org.niltsh.MPlayerX',
    key    => 'LetterBoxMode',
    type   => 'int',
    value  => 1,
  }

  boxen::osx_defaults { 'MPlayerX: set letterbox height to 20%':
    user   => $::luser,
    domain => 'org.niltsh.MPlayerX',
    key    => 'LetterBoxHeight',
    type   => 'float',
    value  => 0.2,
  }

  boxen::osx_defaults {
    'MPlayerX: reset video settings when application quits':
      user   => $::luser,
      domain => 'org.niltsh.MPlayerX',
      key    => 'SelectedPrefView',
      type   => 'int',
      value  => 0;
    'ASVTS (this should be set for some reason)':
      user   => $::luser,
      domain => 'org.niltsh.MPlayerX',
      key    => 'ASVTS',
      type   => 'int',
      value  => 2;
  }

  boxen::osx_defaults { 'MPlayerX: set subtitle font color to red':
    user   => $::luser,
    domain => 'org.niltsh.MPlayerX',
    key    => 'SubFontColor',
    type   => 'data',
    value  => '040b73747265616d747970656481e803840140848484074e53436f6c6f72008484084e534f626a656374008584016301840466666666018395ff403d000186',
  }
}