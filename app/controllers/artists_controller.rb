class ArtistsController < ApplicationController
  # before_action :require_logged_in

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(artist_params)
      flash[:success] = "Profile updated"
      redirect_to @artist
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def create
     @artist = Artist.new artist_params
     if @artist.save
       redirect_to @artist, notice: "Welcome to FanLuv!"
     else
       flash.now[:danger] = 'Invalid email/password combination'
       render action: 'new'
     end
  end

  def show
    @artist = Artist.find(params[:id])
  end


   private

   def artist_params
     params.
     require(:artist).
     permit(:name, :email, :password, :password_confirmation)
   end

end
