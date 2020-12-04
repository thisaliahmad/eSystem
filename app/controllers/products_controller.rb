class ProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.all
  end

  def carts
    @products = current_user.cart_products
  end
end
