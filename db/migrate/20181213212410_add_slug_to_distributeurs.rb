class AddSlugToDistributeurs < ActiveRecord::Migration[5.2]
  def change
    add_column :distributeurs, :slug, :string
    add_index :distributeurs, :slug, unique: true
  end
end
