class CreateDecks < ActiveRecord::Migration[5.2]
  def up
    create_table :decks do |t|
      t.belongs_to :user, index: true
      t.belongs_to :language, index: true
      t.timestamps
    end
    add_index :decks, [:user_id, :language_id], unique: true
  end

  def down
    drop_table :decks
  end
end
