class ProductsController < ApplicationController
before_action :set_product, only: [:update, :destroy, :show, :edit]

  def new
  	# @products = Product.new
    @categories = Category.find(params[:category_id])
    @products = @categories.products.build
  end

  def create
  	# @products = Product.new(product_params)
  	# if @products.save
  	# 	redirect_to category_products_path
  	# else
  	# 	render :new
  	# end
    @categories = Category.find(params[:category_id])
    @products = @categories.products.build(product_params)
    if @products.save
      redirect_to category_products_path
    else
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
  		redirect_to category_products_path
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
  	params.require(:product).permit(:category_id, :name, :description,:avatar)
  end
end