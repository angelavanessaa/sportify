class WishlistsController < ApplicationController
	def index
		@wishlists = Wishlist.all 
	end 

	def show
	end 

	def new
		@wishlist = Wishlist.new
	end 

	def create
		@wishlist = current_user.wishlist.new(wishlist_params)
		if @wishlist.save
			redirect_to wishlists_path(current_user)
		else
			render :new
		end 
	end 

	private 
	def wishlist_params
		params.require(:wishlist).permit(:name, :votes_count)
	end  
end
