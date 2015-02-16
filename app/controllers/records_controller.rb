class RecordsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @records = current_user.records
    render "home/index"
  end

  def create
    @record = current_user.records.create(:login_time => Time.now)
    @records = current_user.records
  end

  def logout
    
  end
    
  end
  def new
  end

  def delete
  end

  def show
  end
end
