class Park < ApplicationRecord
  validates :name, :state, presence: true
  
  scope :search, -> (name_param) { where("name ilike?", "%#{name_param}%")}

end