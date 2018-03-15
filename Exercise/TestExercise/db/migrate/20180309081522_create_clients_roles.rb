class CreateClientsRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_roles do |t|
      t.references :client, foreign_key: true
      t.references :role, foreign_key: true
    end
  end
end
