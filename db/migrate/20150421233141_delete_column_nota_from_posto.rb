class DeleteColumnNotaFromPosto < ActiveRecord::Migration
  def self.up
    remove_column :posto, :nota
  end

  def self.down
    add_column :posto, :nota, :integer
  end
end
