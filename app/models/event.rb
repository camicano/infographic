class Event
  include Mongoid::Document
  field :name, type: String
  field :info, type: String
  field :synopsis, type: String
  
  embedded_in :year
end
