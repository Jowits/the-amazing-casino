class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.string :game_type
      t.boolean :black_list

      t.timestamps
    end
  end
end
