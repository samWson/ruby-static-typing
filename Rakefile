# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rubocop/rake_task'
require 'rake/testtask'

RuboCop::RakeTask.new

task default: %w(test)

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/toy_robot/*_test.rb']
  t.verbose = true
  t.options = '--pride'
end
