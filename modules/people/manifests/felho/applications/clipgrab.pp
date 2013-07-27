class people::felho::applications::clipgrab {
  package { 'clipgrab':
    provider => 'appdmg',
    source   => 'http://download.clipgrab.de/ClipGrab-3.2.1.2.dmg',
  }
}