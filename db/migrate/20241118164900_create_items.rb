class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_type
      t.string :label
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
