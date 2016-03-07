class FansController < ApplicationController
  def new
    @fan = Fan.new
  end

  def create
   @fan = Fan.new fan_params

   if @fan.save
     redirect_to root_path, notice: "Created Fan"
   else
     render action: 'new'
   end
  end

   private
   def fan_params
   params.
   require(:fan).
   permit(:name, :email, :password, :password_confirmation)
   end

end
