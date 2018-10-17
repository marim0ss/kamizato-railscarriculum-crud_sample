class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(posts_params)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
     post = Post.find(params[:id])
     post.update(posts_params)
  end

  def destroy
    # 削除内容をビューで表示させるためpost -> @postに変更した
    @post = Post.find(params[:id])
    @post.delete
  end


  private
    def posts_params
      params.require(:post).permit(:name, :content)
    end
end
