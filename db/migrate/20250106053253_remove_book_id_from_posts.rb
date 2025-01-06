class RemoveBookIdFromPosts < ActiveRecord::Migration[7.1]
  def change
    remove_reference :posts, :book, null: false, foreign_key: true
  end
end
