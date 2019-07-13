require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_phrase
  end

  post '/' do
    @analyzed_text = params[:user_phrase]
  end
end
