class CreateFeedTable < ActiveRecord::Migration[5.1]
  def change
      create_table :feed do |t|
          t.integer :post_id
          t.integer :comment_id
          t.datetime :created_at
      end
  end
end
