class AddSportIdToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :sport_id, :integer
  end
end
