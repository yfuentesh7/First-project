class AddSubcategoryIdToAnnounce < ActiveRecord::Migration
  def change
    add_column :announces, :subcategory_id, :integer
  end
end
