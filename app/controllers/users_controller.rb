class UsersController < ApplicationController

  
  
  def index
    @user = current_user
  end

  def create
    @user = User.create()
  end

  def new
  end

  def delete
  end

  def show
  end

  private

    def user_param
      params.require(:user).permit(:email, :login, :logout)
    end
end
