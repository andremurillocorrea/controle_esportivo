class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :document
      t.string :pwd
      t.integer :age
      t.decimal :height
      t.decimal :weight
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
