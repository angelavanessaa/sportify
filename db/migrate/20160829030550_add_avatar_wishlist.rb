class AddAvatarWishlist < ActiveRecord::Migration
    def up
    add_attachment :wishlists, :avatar
  end
 
  def down
    remove_attachment :wishlists, :avatar
  end
end
