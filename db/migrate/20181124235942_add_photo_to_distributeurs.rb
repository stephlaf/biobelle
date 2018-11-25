class AddPhotoToDistributeurs < ActiveRecord::Migration[5.2]
  def change
    add_column :distributeurs, :photo, :string
  end
end
