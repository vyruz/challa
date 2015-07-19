class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :role
      t.integer :points, :default => 0
      t.string :image

      t.timestamps null: false
    end
  end
end
