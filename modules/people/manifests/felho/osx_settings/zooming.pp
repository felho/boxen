class people::felho::osx_settings::zooming {
  boxen::osx_defaults { 'Use scroll gesture with the Ctrl (^) modifier key to zoom':
    user   => $::luser,
    domain => 'com.apple.universalaccess',
    key    => 'closeViewScrollWheelToggle',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Zooming: zoom panning mode':
    user   => $::luser,
    domain => 'com.apple.universalaccess',
    key    => 'closeViewPanningMode',
    type   => 'bool',
    value  => false,
  }

  boxen::osx_defaults { 'Zooming: smooth images':
    user   => $::luser,
    domain => 'com.apple.universalaccess',
    key    => 'closeViewSmoothImages',
    type   => 'bool',
    value  => true,
  }

  boxen::osx_defaults { 'Zooming: follow the keyboard focus while zoomed in':
    user   => $::luser,
    domain => 'com.apple.universalaccess',
    key    => 'closeViewZoomFollowsFocus',
    type   => 'bool',
    value  => true,
  }
}