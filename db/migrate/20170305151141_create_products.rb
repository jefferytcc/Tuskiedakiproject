class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :image
      t.json :photos
      t.belongs_to :user

      t.timestamps
    end
  end
end
