class people::felho::applications {
  notify { 'class people::felho::applications declared': }

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
  include mplayerx
  include vlc
  include adobe_reader
}