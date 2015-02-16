class Record < ActiveRecord::Base

  belongs_to :user

  def total
    diff_time = logout_time-login_time
    Time.at(diff_time).utc.strftime("%H:%M:%S")
  end

end
