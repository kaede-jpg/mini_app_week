class ChangeColumnDefaultOfQuizImages < ActiveRecord::Migration[7.1]
  def change
    change_column_default :quiz_images, :created_at, from: nil, to: -> { 'NOW()' }
    change_column_default :quiz_images, :updated_at, from: nil, to: -> { 'NOW()' }
  end
end
