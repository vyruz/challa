class Challenge < ActiveRecord::Base
  belongs_to :category
  has_many :user_challenges
  has_many :users, through: :user_challenges
  has_many :bounties
end
