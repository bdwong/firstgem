require 'bundler'
#require 'rspec'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

desc "Run spec tests"
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ['--options', "spec/spec.opts"]
  t.pattern = 'spec/**/*_spec.rb'
end

task :spec => :compile