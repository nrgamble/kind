class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.references :user
      t.string :name
      t.integer :days
      t.date :start

      t.timestamps
    end
  end
end
