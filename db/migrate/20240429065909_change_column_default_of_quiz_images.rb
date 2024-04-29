class ChangeColumnDefaultOfQuizImages < ActiveRecord::Migration[7.1]
  def change
    change_column_default :quiz_images, :created_at, -> { 'NOW()' }
    change_column_default :quiz_images, :updated_at, -> { 'NOW()' }
  end
end
