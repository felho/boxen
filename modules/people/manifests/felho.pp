class people::felho {
  include people::felho::dotfiles
  include people::felho::git_config
  include people::felho::osx_settings
  include people::felho::applications
  include people::felho::application_settings
  include people::felho::homebrew_packages

  notify { 'class people::felho declared': }
}