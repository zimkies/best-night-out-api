class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :content
      t.integer :level

      t.timestamps
    end
  end
end
