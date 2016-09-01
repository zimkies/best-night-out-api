class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.references :challenge
      t.string :response
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
