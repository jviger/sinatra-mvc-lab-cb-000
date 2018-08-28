require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get "/" do
    erb :user_input
  end
  
  post "/user_input" do
  
  @text = PigLatinizer.new(params[:user_phrase]).latinize
  erb :pig_latinized
  end
  
end