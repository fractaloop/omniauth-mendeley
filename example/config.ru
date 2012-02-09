require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-mendeley'

class App < Sinatra::Base
  get '/' do
    redirect '/auth/mendeley'
  end

  get '/auth/:provider/callback' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end

  get '/auth/failure' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end
end

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :mendeley, ENV['MENDELEY_CONSUMER_KEY'], ENV['MENDELEY_CONSUMER_SECRET']
end

run App.new
