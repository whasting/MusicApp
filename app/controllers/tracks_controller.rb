class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_url(@track)
    else
      flash[:errors] = @track.errors.full_messages
      redirect_to new_album_track_url
    end
  end

  def show
    @track = Track.find_by(id: params[:id])
  end

  def edit
  end

  def update
    @track = Track.find_by(id: params[:id])
    if @track.update(track_params)
      redirect_to track_url(@track)
    else
      flash[:errors] = @track.errors.full_messages
      redirect_to edit_track_url
    end
  end

  def destroy
    @track = Track.find_by(id: params[:id]).destroy
    redirect_to tracks_url
  end

  private
  def track_params
    params.require(:track).permit(:track_title, :album_id, :bonus_or_regular)
  end
end
