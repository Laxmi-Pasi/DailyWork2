class AddRefPersonToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :person, null: false, foreign_key: true
  end
end
