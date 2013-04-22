# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false

  # Include step definitions for Turnip
  Dir["spec/steps/**/*steps.rb"].each do |file|
    load file, false
    config.include File.basename(file, ".rb").classify.pluralize.constantize
  end

  config.before do
    Rails.application.routes.default_url_options = {}
  end

end
