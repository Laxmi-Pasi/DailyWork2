class RemoveColumnFromAddress < ActiveRecord::Migration[7.0]
  def change
    remove_column :addresses, :_destroy, :string
  end
end
