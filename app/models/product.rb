class Product < ActiveRecord::Base
  belongs_to :category
  has_many :posts

  has_many :wishlists
  has_many :users, :through => :wishlists 
end
