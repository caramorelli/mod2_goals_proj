class Achievement < ApplicationRecord
  belongs_to :goal
  # has_one :event
  has_many :notes
end
