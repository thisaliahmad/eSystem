class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable
  has_many :product_carts
  has_many :products, through: :product_carts, source: :product
  has_many :cart_products, -> { where(product_carts: { in_cart: true }) }, through: :product_carts, source: :product
end
