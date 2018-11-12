class Goal < ApplicationRecord
  belongs_to :user
  has_many :achievements
  has_one :calendar, through: :achievements
end
