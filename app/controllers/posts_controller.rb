class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy, :edit]

  def new
    @products = Product.find(params[:product_id])
    @posts = @products.posts.build
  end

  def create
    @products = Product.find(params[:product_id])
    @posts = @products.posts.build(post_params)
    if @posts.save
      redirect_to category_product_post_path(:category, :product, @posts)
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    @posts.update(post_params)
    if @posts.save
      redirect_to category_product_post_path
    else
      render :edit
    end
  end

  def destroy
    @posts.destroy
    redirect_to admin_path
  end

  private

    def set_post
      @posts = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:start_date, :end_date, :product_id, :chatbox_id, :vote_id, :price)
    end
end

