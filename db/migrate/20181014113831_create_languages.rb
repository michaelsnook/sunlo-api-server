class CreateLanguages < ActiveRecord::Migration[5.2]
  def up
    create_table :languages do |t|
      t.string :name
      t.string :localised_name
      t.string :iso2, limit: 2
      t.string :iso3, limit: 3
      t.timestamps
    end
  end

  def down
    drop_table :languages
  end
end
