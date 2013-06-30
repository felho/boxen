class people::felho {
  include people::felho::applications
  include people::felho::application_settings

  notify {'class people::felho declared':}
}
