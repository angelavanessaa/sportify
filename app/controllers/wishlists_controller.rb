class WishlistsController < ApplicationController
	 before_filter :authenticate_user!
	 before_action :set_wishlist, only: [:show, :destroy]
	def index
		@wishlists = Wishlist.all 
	end 

	def show
	end 

	def new
		@wishlist = Wishlist.new
	end 

	def create
		@wishlist = current_user.wishlists.new(wishlist_params)

		if @wishlist.save
			redirect_to wishlist_path(@wishlist)
		else
			render :new
		end 

	end 

	def destroy
		@wishlist.destroy
		redirect_to wishlists_path
	end

	def wishlist_vote
		votes.count(:conditions => "value = 1")
	end 

	private 
	def wishlist_params
		params.require(:wishlist).permit(:name, :description, :avatar)
	end  

	def set_wishlist
		@wishlist = Wishlist.find(params[:id])
	end
end
