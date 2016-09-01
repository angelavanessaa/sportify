class AddAvatarToWishlists < ActiveRecord::Migration

	  def self.up
	    add_attachment :wishlists, :avatar
	  end

	  def self.down
	    remove_attachment :wishlists, :avatar
	  end

end
