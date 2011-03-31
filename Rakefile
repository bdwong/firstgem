require 'bundler'
require 'rake/extensiontask'

Bundler::GemHelper.install_tasks

spec = Gem::Specification.load('firstgem.gemspec')

Rake::ExtensionTask.new('firstgem', spec)
