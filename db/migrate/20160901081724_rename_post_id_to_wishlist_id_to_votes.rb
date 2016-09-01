class RenamePostIdToWishlistIdToVotes < ActiveRecord::Migration
  def change
  	remove_reference :votes, :post 
  	add_reference :votes, :wishlist, index: true
  end
end
