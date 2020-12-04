class ProductsCartController < ApplicationController
  def create
    ProductCart.create(user_id: params[:user], product_id: params[:product], in_cart: true )
    redirect_to controller: 'products', action: 'carts'
  end

  def destroy
    @product = ProductCart.where(user_id: current_user.id, product_id: params[:id], in_cart: true ).first
    if @product
      @product.destroy
    end
    redirect_to controller: 'products', action: 'carts'
  end
end
