class RecordsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @records = current_user.records
    redirect_to(root_path)
  end

  def create
    if current_user.records.where("login_time > ?",Time.now.beginning_of_day).empty?
      @records = current_user.records.create(:login_time => Time.now)
      flash[:notice] = "Login time was added successfully."
    end
      @records = current_user.records
      @todays_record = current_user.records.where("login_time > ?",Time.now.beginning_of_day).first
  end

  def update
    @record = Record.find(params[:id])
    unless @record.logout_time.present?
      if @record.update_attributes(:logout_time => Time.now)
        @records = current_user.records
        flash[:notice] = "Logout time was added successfully."
        @todays_record = current_user.records.where("login_time > ?",Time.now.beginning_of_day).first
    end
      else
        redirect_to(root_path)
      end
  end
    
  def new
  end

  def delete
  end

  def show
  end
end
