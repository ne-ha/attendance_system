class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @records = current_user.records
    @todays_record = current_user.records.where("login_time > ?",Time.now.beginning_of_day).first
    # @records = Record.where(:user_id => @user_id)
  end


end
