#frozen_string_literal: true

class MenuSection < ApplicationRecord
  belongs_to :menu
  belongs_to :section

  validates :display_order, numericality: { grater_than: 0 }, allow_nil: true
end
