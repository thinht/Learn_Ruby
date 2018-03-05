class CreateCar < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :title
      t.integer :number_in_car
    end
  end
end
