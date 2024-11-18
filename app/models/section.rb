#frozen_string_literal: true

class Section < ApplicationRecord
  has_many :menu_sections
  has_many :menus, through: :menu_sections

  validates :label, :description, presence: true
end
