class CreateDistributeurs < ActiveRecord::Migration[5.2]
  def change
    create_table :distributeurs do |t|
      t.string :name
      t.string :address
      t.string :website
      t.text :product_list

      t.timestamps
    end
  end
end
