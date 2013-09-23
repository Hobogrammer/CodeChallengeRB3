class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :uid
      t.integer :opid
      t.boolean :reblog, default: false

      t.timestamps
    end
  end
end
