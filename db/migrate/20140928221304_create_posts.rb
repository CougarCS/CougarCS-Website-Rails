class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.date :date
      t.references :author, index: true

      t.timestamps
    end
  end
end
