class AddDescriptionToWishlists < ActiveRecord::Migration
  def change
    add_column :wishlists, :description, :string
  end
end
