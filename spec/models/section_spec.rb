require 'rails_helper'

RSpec.describe Section, type: :model do
  let (:section_attrs) {{
    label: "Section Label",
    description: "Lorem ipsum dolor sit amet"
  }}

  it 'has a valid factory' do
    section = Section.create(section_attrs)

    expect(section).to be_valid
  end

  it "is not valid without label" do
    section = Section.create(section_attrs.except(:label))

    expect(section).not_to be_valid
  end

  it "is not valid without description" do
    section = Section.create(section_attrs.except(:description))

    expect(section).not_to be_valid
  end
end
