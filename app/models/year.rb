class Year
  include Mongoid::Document
  field :year, type: Integer
  field :homicide_rate, type: Integer
  field :refugee_rate, type: Integer	
  field :events, type: Array
  field :user_rate, type: Integer


  embeds_one :cocaine_production
  embeds_many :events
end
