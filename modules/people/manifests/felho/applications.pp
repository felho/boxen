class people::felho::applications {
  notify {'class people::felho::applications declared':}

  # Sublime
  include sublime_text_2
  sublime_text_2::package {'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  # iTerm2
  include iterm2::stable

  # Chrome
  include chrome

  #Skype
  include skype
}
