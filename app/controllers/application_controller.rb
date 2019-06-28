require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    configure do 
      set :views, 'app/views'
    end
    
    get '/' do
      erb :team
    end
    
    post '/teams' do
      #binding.pry
    
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
  
      
      params[:team][:heroes].each do |hero_hash|
        Hero.new(hero_hash)
      end
      @heroes = Hero.all
      
      erb :super_hero
    end


end
