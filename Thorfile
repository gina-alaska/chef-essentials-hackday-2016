# encoding: utf-8
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'bundler'
require 'bundler/setup'
require 'berkshelf/thor'

begin
  require 'kitchen/thor_tasks'
  Kitchen::ThorTasks.new
rescue LoadError
  puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
end

# Lint Class. Can run foodcritic, rubocop, or both.
class Lint < Thor
  default_task :all

  desc 'rubocop', 'Run RuboCop on all Ruby files'
  def rubocop
    say 'Performing linting and style checking with RuboCop...', :white
    success = system 'rubocop'
    exit(10) unless success
    say 'Finished RuboCop linting with no offenses.', :green
  end

  desc 'foodcritic', 'Lint Chef cookbooks with Foodcritic'
  def foodcritic
    say 'Performing Chef cookbook linting with Foodcritic...', :white
    success = system('foodcritic', '-P', '-f correctness', '-X spec/**/*',
                     Dir.pwd)
    exit(10) unless success
    say 'Finished Foodcritic linting with no offenses.', :green
  end

  desc 'all', 'Run all lint tasks'
  def all
    say 'Running all linters...', :white
    rubocop
    foodcritic
  end
end

# Unit testing Class. Can run chefspec.
class Unit < Thor
  default_task :all

  desc 'chefspec', 'Run Chefspec'
  def chefspec
    say 'Running chefspec...', :white
    success = system('rspec --color --format documentation')
    exit(10) unless success
    say 'Finished running Chefspec with no failures.', :green
  end

  desc 'all', 'Run all unit tests'
  def all
    say 'Running all unit tests...', :white
    chefspec
  end
end

# Acceptance testing class. Runs all tests and must validate before push/merge.
class Acceptance < Thor
  default_task :all

  desc 'all', 'Run all acceptance tests. First runs all lint tests, then unit,'\
  ' and then kitchen converge.'
  def all
    say 'Running all acceptance tests...', :white
    invoke 'lint:all'
    invoke 'unit:all'
    invoke 'kitchen:all'
    say 'Finishing running all acceptance tests with no issues. Changes should'\
    ' now be valid for push/merge.', :green
  end
end
