class CreateUserfeedTable < ActiveRecord::Migration[5.1]
  def change
      create_table :userfeed do |t|
          t.string :user_id
          t.string :feed_id
          t.datetime :created_at
      end
  end
end
