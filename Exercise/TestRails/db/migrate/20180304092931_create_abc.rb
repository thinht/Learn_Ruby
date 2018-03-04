class CreateAbc < ActiveRecord::Migration[5.1]
  def change
    create_table :abcs do |t|
      t.string :abc
      t.string :name
      t.integer :age
    end
  end
end
