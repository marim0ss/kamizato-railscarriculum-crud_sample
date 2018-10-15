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



  private
    def users_params
      params.require(:user).permit(:name, :age)
    end


end
