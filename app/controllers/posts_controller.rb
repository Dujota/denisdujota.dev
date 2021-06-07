class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    # render plain: params[:post].inspect <--- to see params in the browser
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to post_path(@post) }
      else
        format.html { render action: "new" }
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def load_post
    @post = Post.find params[:id] if params[:id]
  end
end
