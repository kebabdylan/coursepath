class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :title
      t.integer :weeks
      t.integer :priority
      t.references :step

      t.timestamps
    end
    add_index :blocks, :step_id
  end
end
