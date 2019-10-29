require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    # get '/' do
    #     erb :index
    # end

    # post '/' do 
    #     @translated_pig = PigLatinizer.new(params[:user_text])
    #     erb :user_input
    # end

    get '/hog' do
        erb :hog_index
    end

    post '/' do
        @translated_hog = HogLatinizer.new(params[:user_text])
        erb :hog_input
    end


end