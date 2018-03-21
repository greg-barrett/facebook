class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post=Post.new
  end

  def create
    @post=current_user.authored_posts.build(post_params)
    redirect_to user_post_url(current_user, @post) if @post.save
  end

  def show
    @post=Post.find(params[:id])
    @comment=Comment.new
    @comments=@post.comments  
  end

  def index
    @posts=Post.all
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
