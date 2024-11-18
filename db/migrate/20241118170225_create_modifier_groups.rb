class CreateModifierGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :modifier_groups do |t|
      t.string :label
      t.integer :selection_required_min
      t.integer :selection_required_max

      t.timestamps
    end
  end
end
