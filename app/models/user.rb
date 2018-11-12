class User < ApplicationRecord
  has_one :calendar
  has_many :goals
  has_many :achievements, through: :goals
  has_many :notes, through: :achievements
end
