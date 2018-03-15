class AddAgeToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :age, :string
  end
end
