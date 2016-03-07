class SessionsController < ApplicationController
   def new
   end

   def create
     @fan = Fan.
                   find_by(username: params[:username])
                   try(:authenticate, params[:password])

     @artist= Artist.
                   find_by(username: params[:username])
                   try(:authenticate, params[:password])
     if @artist
       session[:artist_id] = @artist.id
       redirect_to artist_path

     elsif @fan
         session[:fan_id] = @fan.id
         redirect_to fan_path
         #fix this redirect_to

     else
       render action: 'new'
     end
   end

end
