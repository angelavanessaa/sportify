class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy, :edit]
  def new
    @product = Product.find(params[:product_id])
    @post = @products.posts.build
  end
  def create
    @product = Product.find(params[:product_id])
    @post = @products.posts.build(post_params)
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
    @dayday = ((@post.end_date - DateTime.now)/3600/24).ceil
  end
  def edit
  end
  def update
    @post.update(post_params)
    if @post.save
      redirect_to category_product_post_path
    else
      render :edit
    end
  end
  def destroy
    @post.destroy
    redirect_to admin_path
  end
  private
    def set_post
      @post = Post.find(params[:id])
    end
    def post_params
      params.require(:post).permit(:start_date, :end_date, :product_id, :chatbox_id, :vote_id, :price)
    end
end