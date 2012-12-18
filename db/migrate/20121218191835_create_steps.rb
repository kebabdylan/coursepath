class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end
end
