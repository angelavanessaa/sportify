class VotesController < ApplicationController
	def index
	end 

	def create
		@wishlist = Wishlist.find(params[:wishlist_id])

		if Vote.where(user_id: current_user.id, wishlist_id: @wishlist.id).count == 0
			@vote = @wishlist.votes.new(user_id: current_user.id)
			@wishlist.target_votes += 1 
			@vote.save 
			@wishlist.save
			redirect_to wishlist_path(@wishlist)
		else
			redirect_to wishlist_path(@wishlist)
		end 
	end
	
end
