class CreateTableTest < ActiveRecord::Migration[5.1]
  def change
    create_table :table_tests do |t|
      t.string :name
      t.integer :age
    end
  end
end
