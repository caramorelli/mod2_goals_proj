class Calendar < ApplicationRecord
  belongs_to :user
  has_many :achievements
  has_many :goals, through: :achievements
end
