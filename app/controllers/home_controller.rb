class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @records = current_user.records
    # @records = Record.where(:user_id => @user_id)
  end


end
