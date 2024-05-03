class CreateQuizColors < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_colors do |t|
      t.string :name, null: false
      t.integer :code_r, null: false
      t.integer :code_g, null: false
      t.integer :code_b, null: false

      t.timestamps
    end
    add_index :quiz_colors, :name, unique: true
  end
end
