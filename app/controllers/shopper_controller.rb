class ShopperController < ApplicationController
  def index
  end

  def new
   @shopper = Shopper.new
  end
end
