require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :team
    end
    
    post '/teams' do
      #binding.pry
    
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      
      
      params[:team][:heros].each do |hero_hash|
        Hero.new(hero_hash)
      end
      @heroes = Hero.all
      
      erb :super_hero
    end


end
