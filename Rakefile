require 'rake/testtask'
require 'bundler/gem_tasks'
require 'ci/reporter/rake/minitest'
require 'hammer_cli/i18n/find_task'

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.test_files = Dir.glob('test/**/*_test.rb')
  t.verbose = true
end
