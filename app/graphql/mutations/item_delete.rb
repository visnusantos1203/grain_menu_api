# frozen_string_literal: true

module Mutations
  class ItemDelete < BaseMutation
    description "Deletes a item by ID"

    field :message, String, null: false

    argument :id, ID, required: true

    def resolve(id:)
      item = ::Item.find(id)
      raise GraphQL::ExecutionError.new "Error deleting item", extensions: item.errors.to_hash unless item.destroy

      { message: "Item with id: #{item.id} is deleted successfully" }
    end
  end
end
