class AddColDocumentsToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :documents, :string
  end
end
