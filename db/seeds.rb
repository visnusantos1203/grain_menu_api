# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#############################################################################
### Create menu
ActiveRecord::Base.transaction do
  menu = Menu.create(
    label: 'Grain Menu',
    state: 'Active',
    start_date: DateTime.now,
    end_date: 30.days.from_now
  )

  #############################################################################
  ### Create sections

  appetizer_section = Section.create(
    label: 'Appetizers',
    description: 'A small serving of food — just a few bites — meant to be eaten before an entree,
                  and often shared by several people'
  )

  pizza_section = Section.create(
    label: 'Pizza',
    description: 'A flatbread dough base, tomato sauce, cheese, and other toppings'
  )

  #############################################################################
  ### Create menu section

  appetizer_menu_section = MenuSection.create(menu: menu, section: appetizer_section)
  pizza_menu_section = MenuSection.create(menu: menu, section: pizza_section, display_order: 1)

  #############################################################################
  ##### Product item

  creamy_spinach = Item.create(
    item_type: 'Product',
    label: 'Creamy Spinach Pizza',
    description: 'Lorem ipsum dolor sit amet',
    price: 10.00
  )

  ##### Component item
  ### Size
  solo_size = Item.create(
    item_type: 'Component',
    label: '10" pizza',
    description: 'Smallest size of pizza good for 1 person'
  )

  family_size = Item.create(
    item_type: 'Component',
    label: '14" pizza',
    description: 'Medium size pizza good for 2-3 persons'
  )

  big_family_size = Item.create(
    item_type: 'Component',
    label: '16" pizza',
    description: 'Large size pizza good for 4-6 persons'
  )
  ### Toppings
  extra_cheese = Item.create(
    item_type: 'Component',
    label: 'Extra cheese',
    description: 'Additional cheese toppings'
  )

  extra_pepperoni = Item.create(
    item_type: 'Component',
    label: 'Extra pepperoni',
    description: 'Additional pepperoni toppings'
  )

  #############################################################################
  ### Add Creamy Spinach Pizza to Pizza section

  SectionItem.create(item: creamy_spinach, section: pizza_section)

  #############################################################################
  ### Create modifier group

  pizza_size_group = ModifierGroup.create(
    label: 'Size of Pizza',
    selection_required_min: 1,
    selection_required_max: 1
  )

  extra_toppings_group = ModifierGroup.create(
    label: 'Extra toppings',
    selection_required_min: 0,
    selection_required_max: 2
  )

  #############################################################################
  ### Create Item modifier group

  ItemModifierGroup.create(item: creamy_spinach, modifier_group: pizza_size_group)
  ItemModifierGroup.create(item: creamy_spinach, modifier_group: extra_toppings_group)

  #############################################################################
  ##### Create modifier
  ### Size group
  Modifier.create(
    item: solo_size,
    modifier_group: pizza_size_group
  )

  Modifier.create(
    item: family_size,
    modifier_group: pizza_size_group
  )

  Modifier.create(
    item: big_family_size,
    modifier_group: pizza_size_group
  )
  ### Toppings group
  Modifier.create(
    item: extra_cheese,
    modifier_group: extra_toppings_group
  )

  Modifier.create(
    item: extra_pepperoni,
    modifier_group: extra_toppings_group
  )

  puts "DB seeded successfully."
end
