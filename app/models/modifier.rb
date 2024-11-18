# frozen_string_literal: true

class Modifier < ApplicationRecord
  # adding optional: true allows a Modifier record to exist without an associated Item
  belongs_to :item, class_name: 'Item', optional: true
  belongs_to :modifier_group

  validates :default_quantity, :display_order, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
