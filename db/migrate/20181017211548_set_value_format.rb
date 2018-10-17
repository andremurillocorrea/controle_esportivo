class SetValueFormat < ActiveRecord::Migration[5.2]
  def change
    remove_column :finances, :value
    remove_column :finances, :status

  end
end
