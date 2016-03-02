class AddSquadKey < ActiveRecord::Migration
  def change
    add_reference :warriors, :squad, index: true, foreign_key: true
  end
end

