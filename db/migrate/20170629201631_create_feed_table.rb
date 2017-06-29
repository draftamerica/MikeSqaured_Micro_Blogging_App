class CreateFeedTable < ActiveRecord::Migration[5.1]
  def change
      create_table :feed do |t|
          t.string :post_id
          t.string :comment_id
          t.datetime :created_at
      end
  end
end
