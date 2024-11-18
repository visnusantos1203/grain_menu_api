require 'rails_helper'

RSpec.describe ModifierGroup, type: :model do
  let(:modifier_group_attr) {{
    label: 'Modifier Group Label',
    selection_required_min: 0,
    selection_required_max: 3
  }}

  it 'has a valid factory' do
    modifier_group = ModifierGroup.create(modifier_group_attr)

    expect(modifier_group).to be_valid
  end

  it 'is not valid without label' do
    modifier_group = ModifierGroup.create(modifier_group_attr.except(:label))

    expect(modifier_group).not_to be_valid
  end
end
