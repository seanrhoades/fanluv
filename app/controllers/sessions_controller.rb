class SessionsController < ApplicationController

   def new
   end

   def create
     @fan = Fan.
                   find_by(email: params[:email])
                   try(:authenticate, params[:password])

     @artist= Artist.
                   find_by(email: params[:email])
                   try(:authenticate, params[:password])
     if @artist
       session[:artist_id] = @artist.id
       redirect_to current_artist

     elsif @fan
         session[:fan_id] = @fan.id
         redirect_to current_fan

     else
       flash.now[:danger] = 'Invalid email/password combination'
       render action: 'new'
     end
   end

   def destroy
     session[:artist_id] = nil
     session[:fan_id] = nil
     redirect_to login_path
   end


end
