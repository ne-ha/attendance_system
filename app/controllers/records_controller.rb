class RecordsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @records = current_user.records
    redirect_to(root_path)
  end

  def create
    binding.pry
    if current_user.records.where("login_time > ?",Time.now.beginning_of_day).empty?
      @record = current_user.records.create(:login_time => Time.now)
      flash[:notice] = "Login time was added successfully."
    end
      @records = current_user.records
      redirect_to(root_path)
  end

  def update
    @records = Record.find(params[:id])
    @todays_record = current_user.records.where("login_time > ?",Time.now.beginning_of_day).first
    if @records.update_attributes(:logout_time => Time.now)
      flash[:notice] = "Logout time was added successfully."
      redirect_to(root_path( :user_id => @todays_record.id))
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
