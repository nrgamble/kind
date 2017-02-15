class CreateActs < ActiveRecord::Migration[5.0]
  def change
    create_table :acts do |t|
      t.references :user
      t.references :challenge
      t.text :act
      t.text :comment
      t.date :date

      t.timestamps
    end
  end
end
