class AddColfileNameToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :file_name, :string
  end
end
