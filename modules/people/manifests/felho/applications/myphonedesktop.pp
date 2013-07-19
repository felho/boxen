class people::felho::applications::myphonedesktop {
  package { 'myPhoneDesktop':
    provider => 'appdmg',
    source   => 'http://www.myphonedesktop.com/dwn/myPhoneDesktop_macos_2_0_2.dmg',
  }
}