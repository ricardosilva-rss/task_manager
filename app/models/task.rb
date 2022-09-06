class Task < ApplicationRecord
  belongs_to :list

  validates :title, presence: true
  validates :description, presence: true
  validates :card_color, inclusion: ["#FCF595", "#A5E5EB", "#C8F047", "#EABAC8"]
end
