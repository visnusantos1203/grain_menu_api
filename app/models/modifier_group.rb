# frozen_string_literal: true

class ModifierGroup < ApplicationRecord
  validates :label, presence: true
  validates :selection_required_min, :selection_required_max, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
