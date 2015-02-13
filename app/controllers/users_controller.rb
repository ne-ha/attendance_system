class UsersController < ApplicationController

  def index
    @user = current_user
  end

  def create
    @user = User.create(email:@email, login: Time.now)
  end

  private

    def user_param
      params.require(:user).permit(:email, :last_name, :login, :logout)
    end

end
