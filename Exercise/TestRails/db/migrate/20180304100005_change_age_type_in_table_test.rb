class ChangeAgeTypeInTableTest < ActiveRecord::Migration[5.1]
  def change
    change_column :table_tests, :age, :string
  end
end
