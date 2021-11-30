class CreateRentalHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_houses do |t|
      t.string :name
      t.integer :fee
      t.text :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end
