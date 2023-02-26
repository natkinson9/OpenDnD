class CharSheet
  include Mongoid::Document
  include Mongoid::Timestamps
  field :player_name, type: String
  field :char_name, type: String
  field :race, type: String
end
