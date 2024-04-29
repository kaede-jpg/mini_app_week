class ChangeColumnOfQuiz < ActiveRecord::Migration[7.1]
  def change
    change_column_default :quiz_colors, :created_at, from: nil, to: -> { 'NOW()' }
    change_column_default :quiz_colors, :created_at, from: nil, to: -> { 'NOW()' }
  end

  def up
    change_column :quiz_images, :image, 'bytea USING CAST(image AS bytea)'
  end

  def down
    change_column :quiz_images, :image, :string
  end
end
