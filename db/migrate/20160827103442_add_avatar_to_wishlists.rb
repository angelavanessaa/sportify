class AddAvatarToWishlists < ActiveRecord::Migration
  def change
    add_column :wishlists, :avatar, :string
  end
end
