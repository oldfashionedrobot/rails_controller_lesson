class SongsController < ApplicationController
  # GET /songs
  def index
    @songs = Song.all
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # POST /songs
  def create
    @song = Song.create(song_params)

    redirect_to songs_path(@song)
  end

  # GET /songs/:id
  def show
    @song = Song.find(params[:id])
  end

  # GET /songs/:id/edit
  def edit
    @song = Song.find(params[:id])
  end

  # PUT /songs/:id
  def update
    @song = Song.find(params[:id])
    @song.update(song_params)

    redirect_to songs_path(@song)
  end

  # DELETE /songs/:id
  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :album, :preview_url, :artist_id)
  end
end
