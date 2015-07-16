require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/home' do
    erb :index
  end
  
  get '/survey' do
    name = params[:name]
    @name = name(name)
    erb :survey
  end
  

end
