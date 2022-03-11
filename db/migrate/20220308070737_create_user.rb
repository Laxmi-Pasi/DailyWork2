class CreateUser < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :contact
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
