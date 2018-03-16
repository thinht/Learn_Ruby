class AddAlbumRefToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :album, foreign_key: true
  end
end