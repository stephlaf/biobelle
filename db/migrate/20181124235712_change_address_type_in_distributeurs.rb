class ChangeAddressTypeInDistributeurs < ActiveRecord::Migration[5.2]
  def change
    change_column :distributeurs, :address, :text
  end
end
