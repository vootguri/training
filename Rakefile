# frozen_string_literal: true

require 'cucumber'
require 'cucumber/rake/task'
require 'rake'

task default: :succeed

desc 'first test'
Cucumber::Rake::Task.new(succeed: :clean) do |t|
  t.cucumber_opts = 'features --format pretty'
  t.profile = 'succeed'
end


task :clean do
  rm_rf 'tmp' # Clean tmp directory to prevent accumulation of content
end
