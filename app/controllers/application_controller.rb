require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :team
    end
    
    post '/teams' do
      binding.pry
      Hero.new(params)
      @team = params[:name]
      @team_motto = params[:motto]
      erb :super_hero
      
      params[:heros].each
      @heroes = Hero.all
    end


end
