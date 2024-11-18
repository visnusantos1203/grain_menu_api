# frozen_string_literal: true

module Types
  class MenuInputType < Types::BaseInputObject
    argument :label, String, required: true
    argument :state, String, required: true
    argument :start_date, GraphQL::Types::ISO8601Date, required: true
    argument :end_date, GraphQL::Types::ISO8601Date, required: true
  end
end
