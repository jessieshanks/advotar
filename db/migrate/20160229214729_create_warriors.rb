class CreateWarriors < ActiveRecord::Migration
  def change
    create_table :warriors do |t|
      t.string :name
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
