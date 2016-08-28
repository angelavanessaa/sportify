class RemoveAvatarFromWishlist < ActiveRecord::Migration
  def change
    
    remove_column :wishlists, :avatar, :string
  end
end
