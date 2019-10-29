require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/' do 
        @translated_pig = PigLatinizer.new(params[:user_text])
        erb :user_input
    end

end