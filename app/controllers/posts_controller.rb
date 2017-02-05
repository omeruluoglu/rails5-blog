class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
    # to show last post -> reverse
  end

  def show
    @post = Post.find_by_slug(params[:slug])
  end
  def create
    post_params = params[:post]
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_index_path
    else
      #render :new, notice: @post.errors.full_messages
      render :new
    end
  end
  def new
    @post = Post.new
  end

  def edit
    #post_slug = params[:slug]
    @post = Post.find_by_slug(params[:slug])
  end

  def update
    #post_slug = params[:slug]
    @post = Post.find_by_slug(params[:slug])
    if @post.update(post_params)
      redirect_to posts_show_path(@post.slug)
    else
      render :edit
    end
  end

  def destroy
    post_slug = params[:slug]
    @post = Post.find_by_slug(post_slug)
    if @post.destroy!
      redirect_to :back
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :rating, :slug)
    end
end
