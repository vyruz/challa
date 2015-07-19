class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :challenge_id, null: false
      t.string :filename, null: false
      t.timestamps null: false
    end
  end
end
