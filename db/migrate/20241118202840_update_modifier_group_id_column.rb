class UpdateModifierGroupIdColumn < ActiveRecord::Migration[7.0]
  def up
    rename_column :modifiers, :modifier_groups_id, :modifier_group_id
  end

  def down
    rename_column :modifiers, :modifier_group_id, :modifier_groups_id
  end
end
