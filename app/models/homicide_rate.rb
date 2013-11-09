class HomicideRate
  include Mongoid::Document
  field :bolivia, type: Integer
  field :colombia, type: Integer
  field :peru, type: Integer
  field :total, type: Integer
  
  embedded_in :year
end
