class CreatePostsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
        t.string :blog_id
        t.string :title
        t.string :content
        t.string :img_src
        t.datetime :created_at
        t.datetime :updated_at
    end
  end
end
