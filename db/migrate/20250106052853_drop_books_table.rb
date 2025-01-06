class DropBooksTable < ActiveRecord::Migration[7.1]
  def up
    drop_table :books
  end

  def down
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.date :published_date
      t.timestamps
    end
  end

end
