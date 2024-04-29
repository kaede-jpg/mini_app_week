class ChangeColumnDefaultOfQuizImages < ActiveRecord::Migration[7.1]
  def change
    change_table :quiz_images, bulk: true do |t|
      t.change_default :created_at, from: nil, to: -> { 'NOW()' }
      t.change_default :updated_at, from: nil, to: -> { 'NOW()' }
    end
  end
end
