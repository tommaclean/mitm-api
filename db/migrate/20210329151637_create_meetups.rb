class CreateMeetups < ActiveRecord::Migration[6.1]
  def change
    create_table :meetups do |t|
      t.string :location
      t.string :place_id
      t.json :place_coor
      t.string :address
      t.string :name
      t.string :status
      t.integer :price_level
    end
  end
end
