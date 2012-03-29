class CreateSerate < ActiveRecord::Migration
  def change
    create_table :serate do |t|
      t.string :titolo
      t.date :data
      t.decimal :totale, :precision => 7, :scale => 2

      t.timestamps
    end
  end
end
