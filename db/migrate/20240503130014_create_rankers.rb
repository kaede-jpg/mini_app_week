class CreateRankers < ActiveRecord::Migration[7.1]
  def change
    create_table :rankers do |t|
      t.string :nickname, null: false, limit: 12
      t.integer :score, null: false

      t.timestamps
    end
  end
end
