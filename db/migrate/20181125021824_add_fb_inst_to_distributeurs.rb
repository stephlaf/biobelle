class AddFbInstToDistributeurs < ActiveRecord::Migration[5.2]
  def change
    add_column :distributeurs, :facebook, :string
    add_column :distributeurs, :instagram, :string
  end
end
