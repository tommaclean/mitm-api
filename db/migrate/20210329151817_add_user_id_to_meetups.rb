class AddUserIdToMeetups < ActiveRecord::Migration[6.1]
  def change
    add_column :meetups, :user_id, :integer
  end
end
