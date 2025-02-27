require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pig = PigLatinizer.new
        @new_words = pig.piglatinize(params["user_phrase"])
        erb :ans
    end

end