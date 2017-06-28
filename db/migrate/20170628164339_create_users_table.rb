class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
        create_table :users do |t|
            t.string :username
            t.string :password
            t.string :firstname
            t.string :lastname
            t.string :email
            t.string :img_src
            t.datetime :created_at
            t.datetime :updated_at
        end
  end
end
