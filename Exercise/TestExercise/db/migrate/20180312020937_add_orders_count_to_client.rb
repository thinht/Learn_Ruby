class AddOrdersCountToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :orders_count, :integer
  end
end
