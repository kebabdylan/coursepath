class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :questions
      t.integer :priority
      t.references :block

      t.timestamps
    end
    add_index :quizzes, :block_id
  end
end
