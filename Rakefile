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

desc "Build extensions if any are present."
task :compile

desc "Clean extensions if any are present."
task :clean

# Add Rakefile tasks from the extension directories.
Dir.glob('ext/*/').each do |f|
  ext = File.basename(f)
  if File.exist?(File.join(f, 'Rakefile'))

    namespace ext.to_sym do
      pwd = Dir.pwd
      Dir.chdir f
      load 'Rakefile'
      
      # Take all extension tasks and redirect them to run rake in the appropriate folder.
      Rake::Task.tasks().each do |t|
        if t.name =~ Regexp.new("^#{ext}:")
          t.clear
          t.enhance do
            Dir.chdir f
            ns = t.name.split(':')
            puts `rake #{ns[1..-1].join(':')}`
            Dir.chdir pwd
          end
        end
      end
      
      Dir.chdir pwd
    end
    
    # Add extension to main build task if the extension has a build task
    if Rake::Task.task_defined?("#{ext}:build")
      task :compile => "#{ext}:build"
    end

    if Rake::Task.task_defined?("#{ext}:clean")
      task :clean => "#{ext}:clean"
    end
  end
end

