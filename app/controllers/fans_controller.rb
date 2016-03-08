class FansController < ApplicationController
  # before_action :require_logged_in

  def index
    @fans = Fan.all
  end

  def new
    @fan = Fan.new
  end

  def edit
    @fan = Fan.find(params[:id])
  end

  def update
    @fan = Fan.find(params[:id])
    if @fan.update_attributes(fan_params)
      flash[:success] = "Profile updated"
      redirect_to @fan
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def create
     @fan = Fan.new fan_params
     if @fan.save
       redirect_to @fan, notice: "Welcome to FanLuv!"
     else
       flash.now[:danger] = 'Invalid email/password combination'
       render action: 'new'
     end
  end

  def show
    @fan = Fan.find(params[:id])
  end


   private

   def fan_params
     params.
     require(:fan).
     permit(:name, :email, :password, :password_confirmation)
   end

end