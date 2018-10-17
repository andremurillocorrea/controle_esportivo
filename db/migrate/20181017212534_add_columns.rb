class AddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :finances, :value, :decimal, precision: 4, scale: 2
    add_column :finances, :status, :string  
  end
end
