class ChangeNumberInCarFromCar < ActiveRecord::Migration[5.1]
  def change
    change_column :cars, :number_in_car, :string
  end
end
