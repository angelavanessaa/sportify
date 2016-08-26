class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
  	@categories = Category.new
  end

  def create
  	@categories = admin.categories.new(category_params)
  	if categories.save
  		redirect_to root_path
  	else
  	    render :new
  	end
  end

  def update
  	respond_to do |format|
  		if @categories.update(category_params)
  			format.html {redirect to @categories, notice: 'Category was sucessfully updated.'}
  			format.json { render :show, status: :ok, location: @categories }
      else
        format.html { render :edit }
        format.json { render json: @categories.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @categories.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @categories = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(
        :user_id, :name, {avatars:[]}  
        )
      # if want to create post, it need :user_id, :place_name, :place_type, :address, 
        # :bedroom, :bath, :amenity, :cost_per_night,:description   validation
    end

end
