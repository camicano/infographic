class UserRate
  include Mongoid::Document
  field :eu, type: Integer
  field :usa, type: Integer
  field :south_america, type: Integer
  field :other, type: Integer
  field :total, type: Integer
  
  embedded_in :year
end
