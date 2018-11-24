class FixPhotoColumnName < ActiveRecord::Migration[5.2]
  def change
      rename_column :users, :profilepic, :photo
  end
end
