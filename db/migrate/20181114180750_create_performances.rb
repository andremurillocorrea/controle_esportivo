class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.string :style
      t.integer :distance
      t.integer :pool_length
      t.decimal :time
      t.date :date

      t.timestamps
    end
  end
end
