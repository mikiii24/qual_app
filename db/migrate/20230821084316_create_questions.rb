class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :Question_title, null: false, default: nil
      t.text :question_detail,  null: false, default: nil
      t.integer :qual_id,       null: false, default: nil
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
