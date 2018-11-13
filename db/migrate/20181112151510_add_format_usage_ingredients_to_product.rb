class AddFormatUsageIngredientsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :format, :string
    add_column :products, :usage, :text
    add_column :products, :ingredients, :text
  end
end
