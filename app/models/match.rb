class Match < ActiveRecord::Base
  validates :title, presence: true
  has_many :levels, through: :match_levels
  has_many :match_levels
  belongs_to :sport, foreign_key: :sport_id
  belongs_to :user
end
