require 'sinatra/base'
require 'bundler'
Bundler.require

class PusherTesting < Sinatra::Base

  configure do
    register Sinatra::Reloader
    Pusher.app_id = '61655'
    Pusher.key = '26f4232b489d7c8a2e22'
    Pusher.secret = 'da6df554f835d0121657'
  end

  get '/' do
    erb :index
  end

  post '/messages' do
    Pusher['test_channel'].trigger('new_message', params['message'])
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end