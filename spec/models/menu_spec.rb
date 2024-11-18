require 'rails_helper'

RSpec.describe Menu, type: :model do
  let(:menu_attrs) {{
    label: "Menu Label",
    state: "Active",
    start_date: DateTime.now,
    end_date: 1.day.from_now
  }}

  it "has a valid factory" do
    menu = Menu.create(menu_attrs)

    expect(menu).to be_valid
  end

  it "is invalid without label" do
    menu = Menu.create(menu_attrs.except(:label))

    expect(menu).not_to be_valid
  end

  it "is invalid without state" do
    menu = Menu.create(menu_attrs.except(:state))

    expect(menu).not_to be_valid
  end

  it "is invalid without start_date" do
    menu = Menu.create(menu_attrs.except(:start_date))

    expect(menu).not_to be_valid
  end

  it "is invalid without end_date" do
    menu = Menu.create(menu_attrs.except(:end_date))

    expect(menu).not_to be_valid
  end
end
