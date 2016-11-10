class Match < ActiveRecord::Base
  validates :title, presence: true
end
