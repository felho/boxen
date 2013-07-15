class people::felho {
  $computer_name = "${::luser}mbp"

  include people::felho::sudoers
  include people::felho::dotfiles
  include people::felho::git_config
  include people::felho::osx_settings
  include people::felho::applications
  include people::felho::application_settings
  include people::felho::homebrew_packages
}