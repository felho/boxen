class people::felho {
  include people::felho::applications
  include people::felho::application_settings
  include people::felho::dotfiles
  include people::felho::homebrew_packages

  notify {'class people::felho declared':}
}
