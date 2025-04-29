class HomeController < ApplicationController
  def index
    @products = Product.where(popular: true)
  end

  def about
    render :about
  end

  def contact
    render :contact
  end
end