class Task < ApplicationRecord
  belongs_to :list

  validates :title, presence: true
  validates :description, presence: true
  validates :card_color, inclusion: ["yellow", "blue", "green", "pink"]
end
