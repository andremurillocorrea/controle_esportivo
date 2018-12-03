class CreateJoinTableUserTreino < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :treinos do |t|
      # t.index [:user_id, :treino_id]
      # t.index [:treino_id, :user_id]
    end
  end
end
