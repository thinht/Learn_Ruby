class AddNameToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :name, :string
  end
end
