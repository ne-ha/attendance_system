class Record < ActiveRecord::Base

  belongs_to :user

  def total
    self.login_time-self.logout_time
  end

end
