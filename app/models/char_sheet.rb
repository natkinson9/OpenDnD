class CharSheet
  include Mongoid::Document
  include Mongoid::Timestamps
  field :player_name, type: String
  field :char_name, type: String
  field :race, type: String
  field :character_class, type: String
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
  field :passive_perception, type: Integer
  field :speed, type: Integer
  field :hit_dice, type: Integer
  field :death_save_success, type: Integer
  field :death_save_failure, type: Integer
  field :weapons, type: String
  field :equipment, type: String
  field :personality, type: String
  field :ideals, type: String
  field :bonds, type: String
  field :flaws, type: String
  field :features, type: String
  field :gold, type: Integer
  field :silver, type: Integer
  field :copper, type: Integer
  field :platinum, type: Integer
  field :spells, type: String
end
