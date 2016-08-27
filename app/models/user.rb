class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable
         #:confirmable, 
         #:omniauthable
  has_many :votes
  has_many :wishlist
  has_many :products , :through => :wishlists
end
