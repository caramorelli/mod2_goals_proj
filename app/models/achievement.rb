class Achievement < ApplicationRecord
  belongs_to :goal
  belongs_to :calendar
  has_many :notes
end
