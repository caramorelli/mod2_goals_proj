class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username, null: false
#digest is another word for hash
      t.string :password_digest, null: false
      t.string :session_token, null: false

      t.datetime :timezone

      t.timestamps
    end

    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true

  end
end
