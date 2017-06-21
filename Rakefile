# frozen_string_literal: true

begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'bundler/gem_tasks'

require 'rake/testtask'

Rake::TestTask.new do |task|
  task.libs << %w(test lib)
  task.pattern = 'test/test_*.rb'
end

task default: :test
