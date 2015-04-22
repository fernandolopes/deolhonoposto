class RenameTableNameFromPostosToPosto < ActiveRecord::Migration
  def self.up
    rename_table :postos, :posto
    add_column :posto, :uf, :string, :length => 2
  end
  
  def self.down
    remove_column :posto, :uf
    rename_table :posto, :postos
  end
end
