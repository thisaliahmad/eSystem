namespace :e_system do
  task create_products: :environment do
    10.times do |i|
      product = Product.create!(name: "product_#{i}", price: i+10, quantity: i)
      product.image.attach(io: File.open("app/assets/images/#{i}.jpeg"), filename: "#{i}.jpeg", content_type: 'image/jpeg')
    end
  end
  task create_user: :environment do
    User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')
  end
end
