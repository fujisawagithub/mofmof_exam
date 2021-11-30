class Station < ApplicationRecord
  validates :route_name, presence: true
  validates :name, presence: true
  validates :min_on_foot, presence: true
  belongs_to :rental_house
end
