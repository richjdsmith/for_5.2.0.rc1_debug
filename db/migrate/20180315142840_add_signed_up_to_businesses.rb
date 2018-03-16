class AddSignedUpToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :signed_up, :boolean
  end
end
