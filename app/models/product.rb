# app/models/product.rb
class Product < ApplicationRecord
  has_one_attached :image
end
