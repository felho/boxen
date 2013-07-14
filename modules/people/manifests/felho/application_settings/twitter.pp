class people::felho::application_settings::twitter {
  boxen::osx_defaults { 'Enable the hidden \'Develop\' menu':
    user   => $::luser,
    domain => 'com.twitter.twitter-mac',
    key    => 'ShowDevelopMenu',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Open links in the background':
    user   => $::luser,
    domain => 'com.twitter.twitter-mac',
    key    => 'openLinksInBackground',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Allow closing the \'new tweet\' window by pressing \'Esc\'':
    user   => $::luser,
    domain => 'com.twitter.twitter-mac',
    key    => 'ESCClosesComposeWindow',
    type   => 'bool',
    value  => true,
  }
}