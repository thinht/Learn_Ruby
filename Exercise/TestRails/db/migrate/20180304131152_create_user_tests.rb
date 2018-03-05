class CreateUserTests < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tests do |t|
      t.boolean :is_admin
      t.string :address

      t.timestamps
    end
  end
end
