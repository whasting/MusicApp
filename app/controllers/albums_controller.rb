class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      flash[:errors] = @album.errors.full_messages
      redirect_to new_band_album_url
    end
  end

  def show
    @album = Album.find_by(album_params[:name])
    render @album
  end

  def edit
  end

  def update
    @album = Album.find_by(params[:id])
    if @album.update(album_params)
      redirect_to album_url(@album)
    else
      flash[:errors] = @album.errors.full_messages
      redirect_to edit_album_url
    end
  end

  def destroy
    @album = Album.find_by(params[:id]).destroy
    redirect_to albums_url
  end

  private
  def album_params
    params.require(:album).permit(:band_id, :live_or_studio, :album_name)
  end
end
