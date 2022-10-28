class Horse < ApplicationRecord
  belongs_to :breed
  has_one_attached :image
  validates :name, :top_speed, :number_of_legs, :age, presence: true
end
