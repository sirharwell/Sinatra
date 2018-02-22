ENV ['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym
require_relative 'routes'
class Ideas < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions

end
