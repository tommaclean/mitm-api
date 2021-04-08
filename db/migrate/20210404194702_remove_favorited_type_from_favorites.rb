class RemoveFavoritedTypeFromFavorites < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorites, :favorited_type
  end
end
