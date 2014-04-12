require 'sinatra/base'

class BirdApp < Sinatra::Application
  get '/' do
    erb :index
  end

  post '/' do
    params[:birds]
  end
end