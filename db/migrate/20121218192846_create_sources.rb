class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :title
      t.string :url
      t.string :questions
      t.integer :priority
      t.references :block

      t.timestamps
    end
    add_index :sources, :block_id
  end
end
