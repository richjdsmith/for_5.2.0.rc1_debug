class AddMoreThanOneLocationToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :more_than_one_location, :boolean
    add_index :businesses, :more_than_one_location
  end
end
