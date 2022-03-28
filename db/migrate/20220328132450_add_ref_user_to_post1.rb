class AddRefUserToPost1 < ActiveRecord::Migration[7.0]
  def change
    add_reference :post1s, :user, null: false, foreign_key: false
  end
end
