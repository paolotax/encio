class CreateDipendenti < ActiveRecord::Migration
  def change
    create_table :dipendenti do |t|
      t.string :nome
      t.integer :ruolo_id

      t.timestamps
    end
    add_index :dipendenti, :ruolo_id
  end
end
