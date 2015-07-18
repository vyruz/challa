class CreateUserChallenges < ActiveRecord::Migration
  def change
    create_table :user_challenges do |t|

      t.timestamps null: false
    end
  end
end
