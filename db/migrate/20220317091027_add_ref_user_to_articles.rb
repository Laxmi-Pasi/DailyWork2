class AddRefUserToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :user, null: true
  end
end
