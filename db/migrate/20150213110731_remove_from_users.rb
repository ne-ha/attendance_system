class RemoveFromUsers < ActiveRecord::Migration
  
  def change
    remove_column :users, :login, :datetime
    remove_column :users, :logout, :datetime
  end

end
