# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name = "phrase"
  s.version = "0.2.0"
  s.platform = Gem::Platform::RUBY
  s.authors = ["Dynport GmbH"]
  s.email = ["info@phraseapp.com"]
  s.homepage = "https://phraseapp.com"
  s.summary = %q{The best way to manage i18n.}
  s.description = %q{phrase allows you to edit translations in-place on the page itself. More information at phraseapp.com}
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = "phrase"
  git_files = `git ls-files | grep -v spec/`.split("\n") rescue ''
  s.files = git_files
  s.executables = %w(phrase)
  s.require_paths = ["lib"]  
  s.add_dependency('activesupport', '~> 3.0')
  s.add_dependency('addressable', '~> 2.2.8')
end