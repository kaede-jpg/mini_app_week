class ChangeColumnOfQuiz < ActiveRecord::Migration[7.1]
  def change
    change_column_default :quiz_colors, :created_at, -> { 'NOW()' }
    change_column_default :quiz_colors, :created_at, -> { 'NOW()' }
    change_column :quiz_images, :image, 'bytea USING CAST(image AS bytea)'
  end
end
