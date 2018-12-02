class CreatePresencas < ActiveRecord::Migration[5.2]
  def change
    create_table :presencas do |t|
      t.references :treino, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
