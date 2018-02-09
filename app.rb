require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do

      @pirate = Pirate.new(params[:pirate])

      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end

      # @ships = Ship.all

      @ship1 = Ship.new(params[:ship_name_1], params[:ship_type_1], params[:ship_booty_1])
      @ship2 = Ship.new(params[:ship_name_2], params[:ship_type_2], params[:ship_booty_2])

      erb :"pirates/show"
      
    end

  end
end
