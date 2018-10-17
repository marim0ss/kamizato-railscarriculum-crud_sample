class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(posts_paramas)
  end


  private
    def posts_paramas
      params.require(:post).permit(:name, :content)
    end
end
