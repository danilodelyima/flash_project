class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :config_review
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
