require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_phrase
  end

  post '/piglatinize' do
    @analyzed_text = PigLatinizer.new(params[:user_phrase])

    erb :pig_latin_phrase
  end
end
