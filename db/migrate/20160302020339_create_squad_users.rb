class CreateSquadUsers < ActiveRecord::Migration
  def change
    create_table :squad_users do |t|
      t.squad_id :integer
      t.user_id :integer

      t.timestamps null: false
    end
  end

  def change
    remove_column :users, :squad_id
  end

end
