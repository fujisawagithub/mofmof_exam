class RentalHouse < ApplicationRecord
  validates :name, presence: true
  validates :fee, presence: true
  validates :address, presence: true
  validates :age, numericality: true
  has_many :stations,dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true,reject_if: :all_blank
end
