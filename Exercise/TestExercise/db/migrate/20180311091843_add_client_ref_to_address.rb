class AddClientRefToAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :addresses, :client, foreign_key: true
  end
end
