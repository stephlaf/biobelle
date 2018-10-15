class AddShortDescToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :short_desc, :text
  end
end
