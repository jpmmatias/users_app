require './config/environment'
require 'sinatra/base'
require 'sinatra/json'

class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :public_folder, 'public'
    set :database_file, 'config/database.yml'

    set :allow_origin, '*'
    set :allow_methods, %i[get post patch delete options]
    set :allow_credentials, true
    set :max_age, 1_728_000
    set :expose_headers, ['Content-Type']
  end

  options '*' do
    response.headers['Allow'] = 'HEAD,GET,POST,DELETE,OPTIONS'
    response.headers['Access-Control-Allow-Headers'] =
      'X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept'
    200
  end

  get '/users' do
    json(User.all, encoder: :to_json, content_type: :json)
  end
end
