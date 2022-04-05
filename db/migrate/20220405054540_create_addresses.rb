class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :kind
      t.string :street
      t.string :_destroy

      t.timestamps
    end
  end
end
