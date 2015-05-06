ENV['RACK_ENV'] = 'test'

require 'bundler'
Bundler.require

# Load the application
require_relative '../app'
require 'rspec'

require_relative '../config/environment'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in in pagers and files
  config.tty = true

  config.formatter = :documentation#, :progress, :html, :textmate
end