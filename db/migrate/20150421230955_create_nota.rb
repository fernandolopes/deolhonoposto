class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.integer :valor
      t.text :comentario
      t.integer :posto_id

      t.timestamps null: false
      t.belongs_to :posto, :index => true
    end
  end
end
