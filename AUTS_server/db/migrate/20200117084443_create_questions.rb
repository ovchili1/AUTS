class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :quest_body
      t.string :quest_type
      t.integer :teacher_id
      t.belongs_to :thema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
