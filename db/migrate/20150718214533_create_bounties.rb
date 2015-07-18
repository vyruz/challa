class CreateBounties < ActiveRecord::Migration
  def change
    create_table :bounties do |t|
      t.integer :challenge_id
      t.integer :user_id
      t.integer :points

      t.timestamps null: false
    end
  end
end
