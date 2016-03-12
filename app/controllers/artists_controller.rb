class ArtistsController < ApplicationController

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
       session[:artist_id] = @artist.id
       redirect_to @artist, notice: "Welcome to FanLuv!"
     else
       flash.now[:danger] = 'Invalid email/password combination'
       render action: 'new'
     end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def destroy
    Artist.find(params[:id]).destroy
    flash[:success] = "Artist deleted"
    redirect_to root_url
  end

   private

   def artist_params
     params.
     require(:artist).
     permit(:name, :email, :description, :image_url, :password, :password_confirmation, :album1title, :album1image, :album1itunes, :album2title, :album2image, :album2itunes, :album3title, :album3image, :album3itunes, :album4title, :album4image, :album4itunes, :album5title, :album5image, :album5itunes,)
   end

end
