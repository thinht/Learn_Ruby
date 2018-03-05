class DropAbc < ActiveRecord::Migration[5.1]
  def change
    drop_table :abcs
  end
end
