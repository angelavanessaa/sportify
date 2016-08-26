class ProductsController < ApplicationController
before_action :set_product, only: [:update, :destroy, :show, :edit]

  def new
  	@products = Product.new
  end

  def create
  	@products = Product.new(product_params)
  	if @products.save
  		redirect_to(products_path, flash:{ notice: "You have added in a new product!"})
  	else
  		flash[:alert] = "Error adding product."
  		render :new
  	end
  end

  def index
    @products = Product.all
  end

  def show
  end

  def edit
  end

  def update
  	@products.update(product_params)
  	if @products.save
  		redirect_to products_path
    else
      render :edit
  	end
  end

  def destroy
  	@products.destroy
  	redirect_to admin_path
  end

  private
  def set_product
    @products = Product.find(params[:id])
  end

  def product_params
  	params.require(:product).permit(:category_id, :name, :description, {avatars:[]})
  end
end