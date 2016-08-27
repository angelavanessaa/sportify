class MainController < ApplicationController
	def category
		@categories = Category.find_by_name(params[:name].to_s.titleize)
	end
end