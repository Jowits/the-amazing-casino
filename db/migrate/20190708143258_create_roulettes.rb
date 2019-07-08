class CreateRoulettes < ActiveRecord::Migration[5.2]
  def change
    create_table :roulettes do |t|
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
