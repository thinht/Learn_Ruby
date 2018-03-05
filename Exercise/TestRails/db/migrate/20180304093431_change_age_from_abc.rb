class ChangeAgeFromAbc < ActiveRecord::Migration[5.1]
  def change
    change_column :abc, :age, :string
  end
end
