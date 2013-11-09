class Year
  include Mongoid::Document
  field :year, type: Integer
  # field :cocaine_production, type: Hash
  # field :homicide_rate, type: Hash
  # field :users, type: Hash
  field :events, type: Array

  embeds_one :cocaine_production
  embeds_one :homicide_rate
  embeds_one :user_rate
  embeds_many :events
end
