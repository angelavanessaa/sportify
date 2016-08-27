class Product < ActiveRecord::Base
  belongs_to :category

  has_many :wishlists
  has_many :users, :through => :wishlists 

  mount_uploaders :avatars, AvatarUploader

end
