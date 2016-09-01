class Wishlist < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_many :votes
  has_attached_file :avatar, styles: { small: "150x150", medium: "300x300", thumb: "100x100#" }
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
