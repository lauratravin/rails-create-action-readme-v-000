class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new
    post.title = "My post title"
    post.description = "Desc goes here..."
    post.save
    redirect_to posts_path(post)  #should be post_path(post) but it is not working
  end
end
