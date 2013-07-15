class people::felho::sudoers {
  sudoers { 'tmutil':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) NOPASSWD : /usr/bin/tmutil disablelocal',
    ],
    type     => 'user_spec',
  }
}