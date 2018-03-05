class DropNumberToUser < ActiveRecord::Migration[5.1]
  def change
    drop_table :number_to_users
  end
end
