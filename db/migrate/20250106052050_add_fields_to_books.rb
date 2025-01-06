class AddFieldsToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :author, :string
    add_column :books, :link, :string
  end
end
