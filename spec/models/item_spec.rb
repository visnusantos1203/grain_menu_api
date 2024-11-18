require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item_attrs) {{
    description: 'Lorem ipsum dolor sit amet',
    item_type: 'Product',
    label: 'Item Label',
    price: 10.00,
  }}

  it 'has a valid factory' do
    item = Item.create(item_attrs)

    expect(item).to be_valid
  end

  it 'is not valid without item type' do
    item = Item.create(item_attrs.except(:item_type))

    expect(item).not_to be_valid
  end

  it 'is not valid without label' do
    item = Item.create(item_attrs.except(:label))

    expect(item).not_to be_valid
  end

  it 'is not valid without description' do
    item = Item.create(item_attrs.except(:description))

    expect(item).not_to be_valid
  end

  it 'is not valid without price' do
    item = Item.create(item_attrs.except(:price))

    expect(item).not_to be_valid
  end
end
