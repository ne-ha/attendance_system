class AddUserIdToRecords < ActiveRecord::Migration
  
  def change
    add_column :records, :user_id, :string
  end
  add_index("users", "user_id")
  end
  
end


