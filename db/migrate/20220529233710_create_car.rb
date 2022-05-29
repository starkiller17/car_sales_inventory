class CreateCar < ActiveRecord::Migration[6.0]
  def change
    create_table :dealerships do |t|
      t.string :name, null: false, unique: true
      t.string :address, null: false
      t.string :created_by
      t.string :udpated_by
      t.timestamps
    end

    create_table :cars do |t|
      t.belongs_to :dealership, foreign_key: true
      t.string :serial_number, unique: true, null: false
      t.string :model, null: false
      t.string :brand, null: false
      t.integer :year, null: false
      t.float :price, null: false
      t.string :car_type, null: false
      t.string :created_by
      t.string :udpated_by
      t.timestamps
    end
  end
end
