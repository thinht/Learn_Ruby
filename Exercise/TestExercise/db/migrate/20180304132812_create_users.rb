class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.boolean :id_admin
      t.string :address

      t.timestamps
    end
  end
end
