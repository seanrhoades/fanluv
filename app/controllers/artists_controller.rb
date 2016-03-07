class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
   @artist = Artist.new artist_params

   if @artist.save
     redirect_to root_path, notice: "Created Artist"
   else
     render action: 'new'
   end
  end

   private
   def artist_params
   params.
   require(:artist).
   permit(:name, :email, :password, :password_confirmation)
   end

end
