class AddCustomUrlToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :custom_url, :string
    add_index :businesses, :custom_url
  end
end
