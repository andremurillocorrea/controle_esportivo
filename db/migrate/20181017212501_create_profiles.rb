class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birth_date
      t.string :Document
      t.text :address
      t.string :email
      t.string :phone
      t.string :photo_url
      t.boolean :status

      t.timestamps
    end
  end
end
