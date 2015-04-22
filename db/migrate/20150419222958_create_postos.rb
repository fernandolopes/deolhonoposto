class CreatePostos < ActiveRecord::Migration
  def change
    create_table :postos do |t|
      t.string :nome, :null => false
      t.string :logradouro, :null => false
      t.integer :numero
      t.integer :nota
      t.string :bairro, :null => false
      t.string :cidade, :null => false
      t.float :latitude, :null => false
      t.float :longitude, :null => false

      t.timestamps null: false
    end
  end
end
