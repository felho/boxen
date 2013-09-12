class people::felho::applications {
  include sublime_text_2
  include iterm2::stable
  include chrome
  include skype
  include teamviewer
  include dropbox
  include clipmenu
  include transmission
  include java
  include firefox
  include vlc
  include adobe_reader
  include people::felho::applications::myphonedesktop
  include alfred
  include viscosity
  include people::felho::applications::battery_time
  include people::felho::applications::bettertouchtool
  include people::felho::applications::clipgrab
  include handbrake
  include vagrant
  include nodejs::v0_10
  class { 'nodejs::global':
    version => 'v0.10'
  }
}