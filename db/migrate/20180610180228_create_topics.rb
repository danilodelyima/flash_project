class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :confidence
      t.integer :reviewed
      t.date :next_review
      t.references :classroom, foreign_key: true

      t.timestamps
    end
  end
end
