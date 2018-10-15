class CreateLanguagesUsersJoinTable < ActiveRecord::Migration[5.2]
  def up
    create_table :users_languages, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :language, index: true
    end
  end

  def down
    drop_table :users_languages
  end
end
