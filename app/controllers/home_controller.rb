class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user
  end

  
  private

    def user_param
      params.require(:users).permit(:first_name, :last_name, :login, :logout)
    end

end
