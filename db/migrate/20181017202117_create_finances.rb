class CreateFinances < ActiveRecord::Migration[5.2]
  def change
    create_table :finances do |t|
      t.string :debt
      t.decimal :value, precision: 4, scale: 2
      t.string :status

      t.timestamps
    end
  end
end
