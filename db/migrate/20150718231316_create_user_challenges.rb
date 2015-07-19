class CreateUserChallenges < ActiveRecord::Migration
  def change
    create_table :user_challenges do |t|
      t.integer :user_id null: false
      t.integer :chalenge_id null: false
      t.string :status null: false
      t.timestamps null: false
    end
  end
end
