class CartController < ApplicationController
  def create
    logger.debug("Adding #{params[:id]} to cart")
    id = params[:id].to_i
    session[:shopping_cart] << id
    redirect_to root_path
    # abc
  end

  def destroy
    # edsd
  end
end