class RemoveTimeFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :time, :string
  end
end
