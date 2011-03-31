require 'bundler'
require 'rake/extensiontask'
#require 'rspec'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

spec = Gem::Specification.load('firstgem.gemspec')

Rake::ExtensionTask.new('firstgem', spec)

desc "Run spec tests"
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ['--options', "spec/spec.opts"]
  t.pattern = 'spec/**/*_spec.rb'
end

task :spec => :compile