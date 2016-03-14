class CartController < ApplicationController

  def add
    id = params[:id]
    p session
    # if the cart has already been created, use the existing cart
    if session[:cart] then
      cart = session[:cart]
    else session[:cart] = {}
      cart = session[:cart]
    end
    # if the product has already been added to the cart, add number of items
    if cart[id] then
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
    end
  redirect_to :action => :index
  end

  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def index
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  private

  def cart_params
    params.
    require(:cart).
    permit(:title, :description, :image_url, :price)
  end

end
