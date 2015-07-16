require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/start' do
		erb:index
  end
  
  get '/survey' do
    erb:survey
  end

end