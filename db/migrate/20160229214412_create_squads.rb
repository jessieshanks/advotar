class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :name
      t.text :motto

      t.timestamps null: false
    end
  end
end
