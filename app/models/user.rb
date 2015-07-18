class User < ActiveRecord::Base
  has_many :user_challenges
  has_many :challenges, through: :user_challenges
  validates_numericality_of :points, :greater_than_or_equal_to => 0
  has_many :bounties
end
