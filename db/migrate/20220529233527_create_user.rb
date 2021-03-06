class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :user_type, null: false
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
