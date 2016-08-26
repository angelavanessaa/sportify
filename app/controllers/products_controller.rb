class ProductsController < ApplicationController
before_action :set_status, only: [:update, :destroy]
before_action :require_login

  def new
  	@products = Product.new
  end

  def create
  	@products = Product.new(product_params)
  	if @status.save
  		redirect_to(@products, flash:{ notice: "You have added in a new product! "})
  	else
  		flash[:alert] = "Error adding product."
  		render :new
  	end
  end

  def update
  	@products.update(product_params)
  	if @products.save
  		redirect_to(@products, flash:{ notice: "You have successfully added in a product! "})
  	end
  end

  def destroy
  	@products.destroy
  	redirect_to root_path
  end

  private
  def set_status
    @products = Product.find(params[:id])
  end

  def status_params
  	params.require(:products).permit(:category_id, :name, :description)
  end
end

