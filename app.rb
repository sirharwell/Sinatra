require 'sinatra/base'

class Ideas < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions

  get '/' do
    'Hello Frank'
  end

end
