class Sport < ActiveRecord::Base
  has_many :matches, foreign_key: :sport_id
end
