class AddSlugToBusiness < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :slug, :string
  end
end
