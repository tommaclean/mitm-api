class ChangeFavoritedIdToMeetup < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :favorited_id, :meetup_id
  end
end
