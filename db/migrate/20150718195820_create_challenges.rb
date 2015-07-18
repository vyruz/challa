class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :video
      t.int :category_id

      t.timestamps null: false
    end
  end
end
