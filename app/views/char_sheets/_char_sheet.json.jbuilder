json.extract! char_sheet, :id, :player_name, :char_name, :race, :class, :level, :background, :proficiency_bonus, :max_hp, :current_hp, :temp_hp, :armour_class, :initiative, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :created_at, :updated_at
json.url char_sheet_url(char_sheet, format: :json)
