class Level < ActiveRecord::Base
  has_many :match_levels
  has_many :matches, through: :match_levels
end
