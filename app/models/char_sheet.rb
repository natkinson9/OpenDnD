class CharSheet
  include Mongoid::Document
  include Mongoid::Timestamps
  field :player_name, type: String
  field :char_name, type: String
  field :race, type: String
  field :class, type: String
  field :level, type: Integer
  field :background, type: String
  field :proficiency_bonus, type: Integer
  field :max_hp, type: Integer
  field :current_hp, type: Integer
  field :temp_hp, type: Integer
  field :armour_class, type: Integer
  field :initiative, type: Integer
  field :strength, type: Integer
  field :dexterity, type: Integer
  field :constitution, type: Integer
  field :intelligence, type: Integer
  field :wisdom, type: Integer
  field :charisma, type: Integer
end
