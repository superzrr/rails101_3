class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts.recent.paginate(:page => params[:page], :per_page => 5)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      redirect_to account_posts_path
  end
end
