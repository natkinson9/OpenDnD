class Sheet
  include Mongoid::Document
  include Mongoid::Timestamps
  validates :name, presence: true
end