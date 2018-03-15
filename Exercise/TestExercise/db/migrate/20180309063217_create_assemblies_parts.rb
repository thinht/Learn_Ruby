class CreateAssembliesParts < ActiveRecord::Migration[5.1]
  def change
    create_table :assemblies_parts do |t|
      t.references :assembly
      t.references :part
    end
  end
end
