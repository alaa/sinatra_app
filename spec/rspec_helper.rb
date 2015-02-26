# spec/spec_helper.rb
require 'sinatra/activerecord'
require 'rack/test'
require 'rspec'
require './app'

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure do |config|
  config.include RSpecMixin
  config.include Sinatra::ActiveRecordExtension
end
