# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

# Clear existing data
Product.destroy_all

products = [
    {
    name: 'Apple Watch Series 8',
    description: 'Lightly used, great battery life. Find a solution for stress.',
    price: 349.99,
    image_file: 'spinner.jpg',
    popular: true
  },
  {
    name: 'Pre-owned car',
    description: 'Reliable pre-owned Volkswagen, well-maintained, ready for new adventures.',
    price: 799.99,
    image_file: 'preownedcar.jpg',
    popular: true
  },
  {
    name: 'Mechanical keyboard',
    description: 'A mechanical keyboard offers tactile, responsive typing with physical switches.',
    price: 343.32,
    image_file: 'keyboard.jpg',
    popular: true
  },
  {
    name: 'MacBook Air M2',
    description: 'Brand new, sealed in box. 16GB RAM, 512GB SSD.',
    price: 1299.99,
    image_file: 'mac.jpg',
    popular: true
  }
  
  
]

products.each do |p|
  product = Product.create!(
    name: p[:name],
    description: p[:description],
    price: p[:price],
    popular: p[:popular]
  )

  image_path = Rails.root.join("db/seeds/images/#{p[:image_file]}")
  product.image.attach(
    io: File.open(image_path),
    filename: p[:image_file],
    content_type: 'image/jpg' # or 'image/png' if needed
  )
end




# products = [
#   {
#     name: 'iPhone 14 Pro',
#     description: 'Slightly used, excellent condition. All accessories included.',
#     price: 799.99,
#     image: 'spinner.svg',
#     popular: true
#   },
#   {
#     name: 'Macbook Air M2',
#     description: 'Brand new, sealed in box. 16GB RAM, 512GB SSD.',
#     price: 1299.99,
#     image: 'https://images.unsplash.com/photo-1523501634414-d5b1b9f092e2?q=80&w=2076&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
#     popular: false
#   },
#   {
#     name: 'Sony PS5',
#     description: 'Barely used, perfect condition. Includes two controllers.',
#     price: 449.99,
#     image: 'https://images.unsplash.com/photo-1663780870260-88aa7b24523b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
#     popular: true
#   },
#   {
#     name: 'Samsung 55" QLED TV',
#     description: '4K Ultra HD Smart TV with HDR. 2 years warranty left.',
#     price: 699.99,
#     image: 'https://images.unsplash.com/photo-1434493907317-a46b5bbe7834?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
#     popular: true
#   }
# ]

# products.each do |product|
#   Product.create!(product)
# end
