class AddReferenceUserToUserfeedbacks < ActiveRecord::Migration[7.0]
  def change
    add_reference :userfeedbacks, :user, null: false, foreign_key: true
  end
end
