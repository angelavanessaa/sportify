class CategoriesController < ApplicationController
before_action :set_category, only: [:update, :destroy, :show, :edit]

  def index
    @categories = Category.all
  end

  def new
  	@categories = Category.new
  end

  def create
  	@categories = Category.new(category_params)
  	if @categories.save
  		redirect_to categories_path
  	else
      render :new
  	end
  end

  def edit
  end

  def show
  end

  def update
    @categories.update(category_params)
    if @categories.save
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    @categories.destroy
    redirect_to admin_path
  end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @categories = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
      # if want to create post, it need :user_id, :place_name, :place_type, :address, 
        # :bedroom, :bath, :amenity, :cost_per_night,:description   validation
    end

end
