class CreateCharacterRelationships < ActiveRecord::Migration
  def change
    create_table :character_relationships do |t|
      t.integer :character_b_id
      t.integer :character_a_id
      t.string :relationship
      t.string :status
    end
  end
end
