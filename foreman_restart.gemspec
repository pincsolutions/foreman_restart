$:.unshift File.expand_path("../lib", __FILE__)
require "foreman/version"

Gem::Specification.new do |gem|
  gem.name     = "foreman_restart"
  gem.version  = Foreman::VERSION

  gem.authors   = ["Jon Moses", "David Dollar"]
  gem.email    = %w( jon@burningbush.us ddollar@gmail.com)
  gem.homepage = "http://github.com/jmoses/foreman"
  gem.summary  = "Process manager for applications with multiple components, with restarting"

  gem.description = gem.summary

  gem.executables = "foreman"
  gem.files = Dir["**/*"].select { |d| d =~ %r{^(README|bin/|data/|ext/|lib/|spec/|test/)} }
  gem.files << "man/foreman.1"

  gem.add_dependency 'term-ansicolor', '~> 1.0.5'
  gem.add_dependency 'thor',           '>= 0.13.6'

  gem.add_development_dependency 'parka'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'ronn'
  gem.add_development_dependency 'fakefs', '~> 0.3.2'
  gem.add_development_dependency 'rcov',   '~> 0.9.8'
  gem.add_development_dependency 'rr',     '~> 1.0.2'
  gem.add_development_dependency 'rspec',  '~> 2.0.0'
end
