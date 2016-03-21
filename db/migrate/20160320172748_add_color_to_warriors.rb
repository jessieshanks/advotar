class AddColorToWarriors < ActiveRecord::Migration
  def change
    add_column :warriors, :color, :string
  end
end
