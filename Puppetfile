# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.3.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.1"
github "gcc",        "2.0.100"
github "git",        "1.3.7"
github "homebrew",   "1.1.2"
github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice404/puppetlabs-inifile"
github "nginx",      "1.4.0"
github "nodejs",     "2.2.0"
github "repository", "2.0.2"
github "ruby",       "4.1.0"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "sublime_text_2",  "1.1.1"
github "iterm2",          "1.0.2"
github "chrome",          "1.1.0"
github "skype",           "1.0.3"
github "teamviewer",      "1.0.1"
github "dropbox",         "1.1.1"
github "clipmenu",        "1.0.0"
github "transmission",    "1.0.0"
github "java",            "1.1.2"
github "firefox",         "1.1.1"
github "osx",             "1.4.0", :repo => "felho/puppet-osx"
github "vlc",             "1.0.3"
github "adobe_reader",    "1.0.1"
github "alfred",          "1.1.1"
github "viscosity",       "1.0.0"
github "bettertouchtool", "1.0.0", :repo => "lucadegasperi/puppet-bettertouchtool"
github "handbrake",       "1.0.1"
github "vagrant",         "2.0.10"
