class CreateCalculations < ActiveRecord::Migration[5.2]
  def change
    create_table :calculations do |t|
      t.integer :p1
      t.integer :p2
      t.integer :result

      t.timestamps
    end
  end
end
