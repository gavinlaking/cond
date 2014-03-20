require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << 'lib/cond'
  t.test_files = FileList["test/lib/cond/*_test.rb",
                          "test/lib/cond/**/*_test.rb"]
  t.verbose = false
end

task :default => :test
