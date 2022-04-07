class CreateUserfeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :userfeedbacks do |t|
      t.text :text

      t.timestamps
    end
  end
end
