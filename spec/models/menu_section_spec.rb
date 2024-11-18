require 'rails_helper'

RSpec.describe MenuSection, type: :model do
  let(:menu_attrs) {{
    label: "Menu Label",
    state: "Active",
    start_date: DateTime.now,
    end_date: 1.day.from_now
  }}

  let (:section_attrs) {{
    label: "Section Label",
    description: "Lorem ipsum dolor sit amet"
  }}

  it 'is valid with valid attributes' do
    menu = Menu.create(menu_attrs)
    section = Section.create(section_attrs)
    # refactor display order
    menu_section = MenuSection.create(menu: menu, section: section, display_order: 2)

    expect(menu_section).to be_valid
  end
end
