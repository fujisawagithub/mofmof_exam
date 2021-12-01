class AddRentalHouseRefToStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :stations, :rental_house, foreign_key: true
  end
end
