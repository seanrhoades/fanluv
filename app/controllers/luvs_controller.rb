class LuvsController < ApplicationController
  def create
    @artist = Artist.find(params[:luv][:luv])
    fan_id = params[:luv][:luvs]
    current_fan.create_luv(@artist, fan_id)

    redirect_to artist_path(@artist)
  end

  def destroy
    @artist = Artist.find(params[:luv][:luv])
    fan_id = params[:luv][:luvs]
    current_fan.destroy_luv(@artist, fan_id)

    redirect_to artist_path(@artist)
  end


end
