class Park < ApplicationRecord
  validates :name, :state, presence: true
end