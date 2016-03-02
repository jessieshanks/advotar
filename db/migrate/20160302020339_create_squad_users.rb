class CreateSquadUsers < ActiveRecord::Migration
  def change
    create_table :squad_users do |t|
      t.integer :squad_id
      t.integer :user_id

      t.timestamps null: false
    end
  end

end
