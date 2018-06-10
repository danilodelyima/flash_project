class CreateFlashcards < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcards do |t|
      t.text :question
      t.text :answer
      t.boolean :correct
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
