class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.text :text
      t.string :image
      t.timestamps
    end
  end
end
