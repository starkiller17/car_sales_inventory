class ChangeCar < ActiveRecord::Migration[6.0]
  def change
    rename_column :cars, :serial_number, :car_serial_number
  end
end
