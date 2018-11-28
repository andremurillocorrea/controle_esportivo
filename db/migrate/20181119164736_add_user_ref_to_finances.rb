class AddUserRefToFinances < ActiveRecord::Migration[5.2]
  def change
    add_reference :finances, :user, foreign_key: true
  end
end
