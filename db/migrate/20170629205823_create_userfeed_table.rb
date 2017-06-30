class CreateUserfeedTable < ActiveRecord::Migration[5.1]
  def change
      create_table :userfeed do |t|
          t.integer :user_id
          t.integer :feed_id
          t.datetime :created_at
      end
  end
end
