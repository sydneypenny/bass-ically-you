require 'bundler'
Bundler.require
require_relative './models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
		erb:index
  end
  
  post '/' do
    erb:survey
  end
  
  get '/survey' do
    erb:survey
  end
  
  post '/survey' do
    erb:portrait
  end

# end

  post '/portrait' do
    puts params
    name = params[:name]
    @name = name(name)
    
    primary_instrument = params[:instrument]
    @primary_instrument = instrument(primary_instrument)
    
    genre_to_play = params[:play]    
    @genre_to_play = play(genre_to_play)
    
    genre_to_listen = params[:listen]    
    @genre_to_listen = listen(genre_to_listen)
    
    favorite_artist = params[:artist]    
    @favorite_artist = artist(favorite_artist)
    
    picture = params[:picture]
    @picture = picture
    
    erb:portrait
  end
    

end