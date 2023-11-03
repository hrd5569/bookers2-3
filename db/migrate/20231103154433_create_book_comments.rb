class CreateBookComments < ActiveRecord::Migration[6.1]
  def change
    create_table :book_comments do |t|
      t.string :book_comments

      t.timestamps
    end
  end
end
