class CreateBlogTable < ActiveRecord::Migration[5.1]
  def change
      create_table :blog do |t|
          t.string :user_id
          t.string :title
          t.datetime :created_at
          t.datetime :updated_at
      end
  end
end
