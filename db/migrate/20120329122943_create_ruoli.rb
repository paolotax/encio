class CreateRuoli < ActiveRecord::Migration
  def change
    create_table :ruoli do |t|
      t.string :nome

      t.timestamps
    end
  end
end
