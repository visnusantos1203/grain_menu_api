# frozen_string_literal: true

module Types
  class SectionInputType < Types::BaseInputObject
    argument :label, String, required: true
    argument :description, String, required: true
  end
end
