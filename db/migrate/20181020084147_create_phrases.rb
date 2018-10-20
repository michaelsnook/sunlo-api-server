class CreatePhrases < ActiveRecord::Migration[5.2]
  def up
    create_table :phrases do |t|
      t.text :text
      t.text :localised_text
      t.references :language, foreign_key: true
      t.timestamps
    end
  end
  def down
    drop_table :phrases
  end
end
