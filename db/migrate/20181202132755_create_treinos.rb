class CreateTreinos < ActiveRecord::Migration[5.2]
  def change
    create_table :treinos do |t|
      t.date :Data
      t.text :Descricao

      t.timestamps
    end
  end
end
