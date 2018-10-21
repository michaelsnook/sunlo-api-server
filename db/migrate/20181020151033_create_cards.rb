class CreateCards < ActiveRecord::Migration[5.2]
  def up
    create_table :cards do |t|
      t.belongs_to :phrase, foreign_key: true
      t.belongs_to :deck, foreign_key: true
      t.string :status, default: 'learning'
      t.timestamps
    end
    add_index :cards, [:phrase_id, :deck_id], unique: true
  end

  def down
    drop_table :cards
  end
end
