class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # ストロングパラメータを利用する記述
    User.create(users_params)
  end

  def edit
    @user = User.find(params[:id]) # <=削除ボタンのリンクuser.idからidを受け取った！
  end

  def update
    user = User.find(params[:id])
    user.update(users_params)
  end


  def destroy
    user = User.find(params[:id]) # <=削除ボタンのリンクuser.idからidを受け取った！
    user.delete
  end

  private
    def users_params
      params.require(:user).permit(:name, :age)
    end


end
