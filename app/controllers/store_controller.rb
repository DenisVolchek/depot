class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    return session[:counter] = 0 if session[:counter].nil?

    session[:counter] += 1
  end
end
