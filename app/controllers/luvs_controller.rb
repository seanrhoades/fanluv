class LuvsController < ApplicationController
  def create
    @artist = Artist.find(params[:luv][:luv])
    fan_id = params[:luv][:luvs]
    current_fan.create_luv(@artist, fan_id)

    redirect_to artist_path(@artist)
  end

  def destroy
    # @artist = Artist.find(params[:luv][:luv])
    # fan_id = params[:luv][:luvs]
    # current_fan.destroy_luv(@artist, fan_id)
    luve = Luv.find(params[:id])
      luve.destroy
    redirect_to luve.artist
  end

  def show
  end

  private

  def luv_params
    params.
    require(:luv).
    permit(:fan_id, :artist_id)
  end



end
