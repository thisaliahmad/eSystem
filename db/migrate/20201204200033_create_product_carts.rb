class CreateProductCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :product_carts do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.boolean :in_cart, default: false
      t.timestamps
    end
  end
end
