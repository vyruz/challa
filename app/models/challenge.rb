class Challenge < ActiveRecord::Base
  attr_accessor :image_path
  attr_accessor :bounty_total
  belongs_to :category
  has_many :user_challenges
  has_many :users, through: :user_challenges
  has_many :bounties
end
