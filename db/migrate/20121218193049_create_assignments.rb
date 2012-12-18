class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.references :block

      t.timestamps
    end
    add_index :assignments, :block_id
  end
end
