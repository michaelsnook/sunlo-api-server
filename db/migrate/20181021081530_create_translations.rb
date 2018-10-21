class CreateTranslations < ActiveRecord::Migration[5.2]
  def up
    create_table :translations do |t|
      t.text :text
      t.text :localised_text
      t.references :phrase, foreign_key: true
      t.references :language, foreign_key: true
      t.timestamps
    end
  end

  def down
    drop_table :translations
  end
end
