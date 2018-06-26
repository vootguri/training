# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'
require 'net/http'
require 'pathname'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'logger'
require 'pry'
require 'site_prism'

Dir['pages/**/*.rb'].each do |f|
  puts "importing #{f}"
  require_relative f
end
