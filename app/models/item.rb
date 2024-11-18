# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :section_items
  has_many :sections, through: :section_items

  validates :label, :description, :price, presence: true
  validates :item_type, presence: true, inclusion: { in: %w[Product Component] }
end
