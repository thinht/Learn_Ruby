class AddLastToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last, :string
  end
end
