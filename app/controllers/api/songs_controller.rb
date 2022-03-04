class Api::SongsController < ApplicationController
    # call on all methods in this class
    before_action :set_artist, except:[:all_songs]
      # call on show, :update, :destroy methods in this class
    before_action :set_song, only: [:show, :update, :destroy]

    def all_songs
       render json: Song.all
    end
  
    def index
    #   @artist =  Artist.find(params[:artist_id])
      render json: @artist.songs
    end

    def show
       render json: @song
    end

    def destroy
        render json: @song.destroy
    end

    def create
        # this will setup artist_id for use in the song
        # by using @artist.songs.new
        song = @artist.songs.new(song_params)
        if(song.save)
            render json: song
        else
            render json: {errors: song.errors.full_messages}, status: 422
        end
    end

    def update
        if(@song.update(song_params))
            render json: @song
        else
            render json: {errors: @song.errors.full_messages}, status: 422
        end
    end

    private
    def set_artist
        @artist =  Artist.find(params[:artist_id])
    end

    def set_song
        @song = @artist.songs.find(params[:id])
    end


    def song_params
      params.require(:song).permit(:name, :play_count)
    end
end
