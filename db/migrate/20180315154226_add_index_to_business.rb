class AddIndexToBusiness < ActiveRecord::Migration[5.2]
  def change
    add_index :businesses, :slug
  end
end
