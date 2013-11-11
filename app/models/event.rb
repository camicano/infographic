class Event
  include Mongoid::Document
  field :title, type: String
  field :synopsis, type: String
  
  embedded_in :year
end


