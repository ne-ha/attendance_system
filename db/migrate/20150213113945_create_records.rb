class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.datetime :login_time
      t.datetime :logout_time

      t.timestamps null: false
    end
    add_index("users", "user_id")
  end
  
end
