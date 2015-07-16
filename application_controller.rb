require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
		erb :index #Anjuli's comment
  end

end
