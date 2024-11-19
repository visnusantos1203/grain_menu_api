# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :section_delete, mutation: Mutations::SectionDelete
    field :section_update, mutation: Mutations::SectionUpdate
    field :section_create, mutation: Mutations::SectionCreate
    field :menu_delete, mutation: Mutations::MenuDelete
    field :menu_update, mutation: Mutations::MenuUpdate
    field :menu_create, mutation: Mutations::MenuCreate
  end
end
