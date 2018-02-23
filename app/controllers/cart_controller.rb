class CartController < ApplicationController
  def add
    id = params[:id]
  #This method will check if a session already exists, if it doesn't a new session will be created.
      if session[:cart] then
         cart = session[:cart]
      else
          session[:cart] = {}
          cart = session[:cart]
      end

  #Inside the cart, if a particular product is being added for the first time then its qauntity will be set to one, otherwise it will be incremented by one.
      if cart[id] then
        cart[id] = cart[id] + 1
      else
        cart[id] = 1
      end

    #The page is redirect to cart#index
      redirect_to :action => :index
    end

  # Clear is used for clearing all the products in the cart.
  def clear
    session[:cart] = nil
    redirect_to :action => :index
  end

  #If the cart is empty, then clicking the checkout button will show a message that your cart is empty. If the cart is not empty, then checkout will take the user to a form where user will fill out their details and place the order. The cart is also cleared.
  def checkout
    if session[:cart] then
      session[:cart] = nil
      redirect_to ('/shopper/new')
      flash[:notice] = "Your order has been placed!"
    else
      redirect_to ('/cart')
      flash[:notice] = "Your cart is empty!"
    end
  end

  def index
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
end
