# frozen_string_literal: true

class Item < ApplicationRecord
  validates :label, :description, :price, presence: true
  validates :item_type, presence: true, inclusion: { in: %w[Product Component] }
end
