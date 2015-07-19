class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.integer :image_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
