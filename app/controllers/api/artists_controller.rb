class Api::ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :update, :destroy]
    #DRY CODE DO NOT REPEAT YOSELF
    # get '/api/artists'
    # return all artists as json
    def index
        render json: Artist.all
    end

    def show
       render json: @artist
    end

    def create
        # params is defined by our controller in rails
        #create artist in memory with santiazed params
        artist = Artist.new(artist_params)
        
        # try to save to DB
        if(artist.save)
          render json: artist
        else
          render json: {errors: artist.errors.full_messages}, status: 422
        end
        
    end

    def update
        # try to save to DB
        if(@artist.update(artist_params))
          render json: @artist
        else
          render json: {errors: @artist.errors.full_messages}, status: 422
        end
    end

    def destroy
        render json: @artist.destroy
    end

    def method1
      render json:{from: 'from method 1'}
    end

    def y
        render json:{from: 'from y'}
    end


    # methods only visible to class
    private

    # 
    def artist_params
      params.require(:artist).permit(:name, :fans)
    end

    def set_artist
       puts 'set_artist called!@!!!!!!!'
       @artist = Artist.find(params[:id])
    end

   

end

# set route in config/routes.rb
