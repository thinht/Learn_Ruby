class DropTableTest < ActiveRecord::Migration[5.1]
  def change
    drop_table :table_tests
  end
end
