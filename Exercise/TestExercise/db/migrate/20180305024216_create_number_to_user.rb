class CreateNumberToUser < ActiveRecord::Migration[5.1]
  def change
    create_table :number_to_users do |t|
      t.integer :number
    end
  end
end
