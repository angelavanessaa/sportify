class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def new
    @categories = Category.find(params[:category_id])
    @products = @categories.products.find(params[:product_id])
    @posts = @products.posts.build
    # @posts = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def index
    @posts = Post.all

    render json: @posts
  end

  def show
    render json: @post
  end



  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      head :no_content
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy

    head :no_content
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:start_date, :end_date, :product_id, :chatbox_id, :vote_id, :price, :category_id)
    end
end

