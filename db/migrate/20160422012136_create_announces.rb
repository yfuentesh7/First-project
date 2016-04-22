class CreateAnnounces < ActiveRecord::Migration
  def change
    create_table :announces do |t|
      t.float :price
      t.string :title
      t.text :description
      t.string :email
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
