# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
      argument :id, ID, required: true, description: "ID of the object."
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
      argument :ids, [ID], required: true, description: "IDs of the objects."
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :menus, [Types::MenuType], null: true do
      description "Retrieve all menus"
    end

    def menus
      Menu.all
    end

    field :menu, Types::MenuType, null: true, description: "Retrieve menu using id" do
      argument :id, ID, required: true
    end

    def menu(id:)
      Menu.find(id)
    end

    # Section Entity
    field :sections, [Types::SectionType], null: true do
      description "Retrieve all sections"
    end

    def sections
      Section.all
    end

    field :section, Types::SectionType, null: true, description: "Retrieve section using id" do
      argument :id, ID, required: true
    end

    def section(id:)
      Section.find(id)
    end

    # Item Entity
    field :items, [Types::ItemType], null: true do
      description "Retrieve all items"
    end

    def items
      Item.all
    end

    field :item, Types::ItemType, null: true, description: "Retrieve item using id" do
      argument :id, ID, required: true
    end

    def item(id:)
      Item.find(id)
    end

    # MenuSection Entity
    field :menu_sections, [Types::SectionType], null: true do
      description "Retrieve sections for a specific menu"
      argument :menu_id, ID, required: true
    end

    def menu_sections(menu_id:)
      Menu.find(menu_id).sections
    end
  end
end
