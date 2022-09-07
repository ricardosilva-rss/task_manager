class List < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :card_color, inclusion: ["orange", "red", "gray", "black"]
end
