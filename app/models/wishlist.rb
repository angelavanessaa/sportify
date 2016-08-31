class Wishlist < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_many :votes
end
