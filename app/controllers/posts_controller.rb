class PostsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    # render plain: params[:post].inspect <--- to see params in the browser
    respond_to do |format|
      if @post.save
        format.html { redirect_to post_path(@post), notice: "Post was successfully created" }
      else
        format.html { render action: "new", notice: "There was an error with saving the new post" }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_path(@post), notice: "Post was successfully updated" }
      else
        flash[:notice] = "Unable to update Blog Post"
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
