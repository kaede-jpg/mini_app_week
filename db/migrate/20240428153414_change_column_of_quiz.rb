class ChangeColumnOfQuiz < ActiveRecord::Migration[7.1]
  def change
    change_table :quiz_colors, bulk: true do |t|
      t.change_default :created_at, from: nil, to: -> { 'NOW()' }
      t.change_default :updated_at, from: nil, to: -> { 'NOW()' }
    end
  end

  def up
    change_column :quiz_images, :image, 'bytea USING CAST(image AS bytea)'
  end

  def down
    change_column :quiz_images, :image, :string
  end
end
