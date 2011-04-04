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
            system "rake #{ns[1..-1].join(':')}"
            Dir.chdir pwd
          end
        end
      end
      
      Dir.chdir pwd
    end

    # Add these extension tasks to the main Rakefile if the extension has them
    ['compile', 'clean', 'wrapper'].each do |t|
      desc "Run rake #{t} task on all extensions."
      task t.to_sym

      if Rake::Task.task_defined?("#{ext}:#{t}")
        task t.to_sym => "#{ext}:#{t}"
      end
    end

  end
end

