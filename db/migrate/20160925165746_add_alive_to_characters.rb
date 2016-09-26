class AddAliveToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :alive, :boolean
  end
end
