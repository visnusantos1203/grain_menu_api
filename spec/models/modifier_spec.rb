require 'rails_helper'

RSpec.describe Modifier, type: :model do
  let(:item_attrs) {{
    description: 'Lorem ipsum dolor sit amet',
    item_type: 'Product',
    label: 'Item Label',
    price: 10.00,
  }}

  let(:modifier_attrs) {{
    display_order: 1,
    default_quantity: 1,
    price_override: 9.99,
  }}

  let(:modifier_group_attr) {{
    label: 'Modifier Group Label',
    selection_required_min: 0,
    selection_required_max: 3
  }}

  it 'has a valid factory' do
    item = Item.create(item_attrs)
    modifier_group = ModifierGroup.create(modifier_group_attr)
    modifier = Modifier.create(
      item: item,
      modifier_group: modifier_group,
      display_order: 1,
      default_quantity: 1,
      price_override: 9.99,
    )

    expect(modifier).to be_valid
  end
end
