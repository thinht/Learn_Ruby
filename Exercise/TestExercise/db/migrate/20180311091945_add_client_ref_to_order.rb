class AddClientRefToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :client, foreign_key: true
  end
end
