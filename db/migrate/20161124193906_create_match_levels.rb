class CreateMatchLevels < ActiveRecord::Migration
  def change
    create_table :match_levels do |t|
      t.integer :match_id
      t.integer :level_id
    end
  end
end
