# frozen_string_literal: true

module Types
  class ItemInputType < Types::BaseInputObject
    argument :item_type, String, required: true
    argument :label, String, required: true
    argument :description, String, required: true
    argument :price, Float
  end
end
