class AddFieldsToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :link, :string
  end
end
