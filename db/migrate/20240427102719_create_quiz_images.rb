class CreateQuizImages < ActiveRecord::Migration[7.1]
  def change
    create_table :quiz_images do |t|
      t.string :image, null: false

      t.timestamps
    end
    add_index :quiz_images, :image, unique: true
  end
end
