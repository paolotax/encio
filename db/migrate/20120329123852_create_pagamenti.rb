class CreatePagamenti < ActiveRecord::Migration
  def change
    create_table :pagamenti do |t|
      t.decimal :importo, :precision => 7, :scale => 2
      t.integer :dipendente_id
      t.integer :serata_id

      t.timestamps
    end
    add_index :pagamenti, :dipendente_id
    add_index :pagamenti, :serata_id
  end
end
