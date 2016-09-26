class CreateFamilyCharacters < ActiveRecord::Migration
  def change
    create_table :family_characters do |t|
      t.integer :family_id
      t.integer :character_id
    end
  end
end
